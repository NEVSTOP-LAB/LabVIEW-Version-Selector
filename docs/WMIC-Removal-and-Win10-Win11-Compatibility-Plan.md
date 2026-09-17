# WMIC 移除与 Windows 10/11 兼容性改造计划

## 目标

移除 WMIC 的安装和运行时依赖，同时保持 LabVIEW Version Selector 在 Windows 10 与 Windows 11 上的现有行为。

LabVIEW 安装发现以由 `System Exec.vi` 执行的非提权批处理脚本为主要实现。脚本仅读取注册表和文件系统，不修改系统配置、不使用 DISM 且不请求 UAC 提权。对注册表未发现的安装，保留现有对 `C:` 至 `F:` 驱动器固定目录的扫描作为回退。

## 范围

包含：

- 删除 WMIC 安装辅助脚本、相关文档和所有包分发引用。
- 替换在 LabVIEW 程序框图中确认存在的每一处 WMIC 命令。
- 保持现有 LabVIEW 信息记录、选择器 UI、命令行处理、文件关联行为和支持的文件类型。
- 构建并验证标准与管理员 EXE 构建规格以及 VIP 包。

不包含：

- 将扫描根目录改为可配置。
- 自动枚举所有本地驱动器。
- 将 PowerShell、CIM 或 LabVIEW 原生注册表 API 作为必需的运行时依赖。
- 重构 `Sigcheck`，除非检查证实它直接调用 WMIC。

## 已确认的当前状态

| 位置 | 已确认行为 | 所需改动 |
| --- | --- | --- |
| `cmd/install-wmic-if-missing.bat` | 使用 `where wmic`；不可用时通过 PowerShell 提权，并使用 DISM 安装 `WMIC~~~~0.0.1.0`。 | 删除该文件。 |
| `README.md` | `Windows 11 WMIC support` 章节要求用户运行辅助脚本。 | 删除该章节。 |
| `LabVIEW-Version-Selector.vipb` | 以 `.` 为源目录，仅排除 `.gitignore` 和 `Build`；辅助脚本可能被纳入 VIP 源文件集。 | 从源目录删除脚本；仅当 VIPM 在项目配置中保留已删除路径的排除项时，添加显式排除。 |
| `LabVIEW-Version-Selector.lvproj` | EXE 构建规格包含应用程序库和 `Sigcheck`，未显式包含 `cmd`。 | 修改 VI 后重新构建两个 EXE 并检查构建输出。 |

以下 VI 为二进制文件，尚未通过文本检查确定其实际命令用法，修改前必须验证：

- `Application/support/GetLabVIEWInfos.vi`
- `Application/support/_GetLVInfo.vi`
- `cmd/OSArchitecture.vi`
- `cmd/SigCheck.vi`
- `_vip_support/Post-Install Custom Action.vi`
- `_vip_support/Post-Uninstall Custom Action.vi`

## 阶段 1：审计二进制 VI

在修改任何程序框图前，使用 LabVIEW 2017 中的 `labview-mcp` 检查候选 VI。

对每个候选 VI：

1. 读取其程序框图和连接器窗格。
2. 查找每个 `System Exec.vi` 或等效的外部进程节点。
3. 记录命令字符串常量和构造出的命令字符串。
4. 搜索 `wmic`、`wmic.exe`、`WMIC~~~~0.0.1.0`、`dism`、`powershell` 和 `sigcheck`。
5. 检查调用者与被调用者，确定行为的归属 VI 和所有下游契约。

### 预期审计结论

| VI | 审计决策 |
| --- | --- |
| `Application/support/GetLabVIEWInfos.vi` | 确认它是否枚举 LabVIEW 安装，以及是否使用 WMIC 发现安装。 |
| `Application/support/_GetLVInfo.vi` | 确认它是否将安装路径转换为 `DEF-LabVIEW INFO.ctl`，以及是否调用外部进程。 |
| `cmd/OSArchitecture.vi` | 确认它是否依赖 WMIC 获取操作系统或进程架构。 |
| `cmd/SigCheck.vi` | 确认它对随包 Sysinternals 可执行文件的独立使用，以及与 WMIC 的关系。 |
| 安装后与卸载后动作 | 确认它们仅管理文件关联，不调用 WMIC 或已删除的辅助脚本。 |

不能只因 VI 名称看似与 WMIC 有关就替换它。审计结果是后续每项程序框图改动的必要证据。

## 阶段 2：定义安装发现契约

改变发现逻辑前，依据审计后的程序框图记录 `Application/support/GetLabVIEWInfos.vi` 和 `Application/support/_GetLVInfo.vi` 的现有契约：

1. 列出所有输入、输出和错误行为。
2. 确定写入 `Application/support/DEF-LabVIEW INFO.ctl` 的字段。
3. 记录当前排序、去重、版本筛选和无效路径处理方式。
4. 确定当前 `C:` 至 `F:` 固定目录扫描的位置，并将其保留为回退阶段。

注册表实现必须返回调用者预期的相同有效 LabVIEW 安装记录，且不得改变选择器 UI 契约。

## 阶段 3：以非提权批处理脚本替换已确认的 WMIC 安装发现逻辑

仅在审计确定的归属 VI 中执行本阶段，预计为 `Application/support/GetLabVIEWInfos.vi` 或其直接子 VI。

1. 新增 `cmd/GetLabVIEWInstallPaths.bat`，仅使用 Windows 内置的 `reg.exe` 查询 National Instruments 与 LabVIEW 安装注册表项；不得调用 PowerShell、CIM、WMIC 或 DISM。
2. 脚本分别使用 `reg query` 读取原生注册表视图和 `/reg:32`、`/reg:64` 指定的注册表视图，覆盖 32 位与 64 位 LabVIEW 安装。
3. 脚本从审计中发现的每种受支持键布局读取安装根目录值，并以每行一个绝对路径的 UTF-8 或系统 ANSI 编码输出。实施时必须确定编码，并使 LabVIEW 端按相同编码解码。
4. 脚本跳过缺失键、缺失值和无效路径；未发现任何安装时应正常退出，不得输出误导性的错误文本。
5. 在归属 VI 中通过 `System Exec.vi` 调用该脚本，收集标准输出、标准错误和退出码。使用绝对脚本路径或基于应用程序目录构造的路径，避免依赖当前工作目录。
6. 将标准输出解析为候选目录路径，规范化路径后确认目录包含预期的 `LabVIEW.exe`，再创建 LabVIEW 信息记录。
7. 除非审计确定了其他现有转换子 VI，否则通过现有 `_GetLVInfo.vi` 的路径到记录逻辑转换有效路径。
8. 合并批处理脚本发现的记录与现有 `C:` 至 `F:` 目录扫描得到的记录。
9. 使用阶段 2 确定的相同身份标识和排序规则去重。
10. 仅在当前调用者行为要求时传播脚本执行错误；无匹配注册表键或无有效路径必须视为空发现源，并继续执行目录回退。

### 批处理脚本契约

| 项目 | 约定 |
| --- | --- |
| 路径 | `cmd/GetLabVIEWInstallPaths.bat`；构建 EXE 时将其作为支持文件部署到 EXE 可访问目录。 |
| 权限 | 仅读取 `HKLM` 下注册表值和检查目录，普通用户可执行；不得使用 `runas`、`Start-Process -Verb RunAs`、`net session` 或任何提权逻辑。 |
| 标准输出 | 每行一个候选 LabVIEW 安装根目录；不输出状态提示、标题或调试信息。 |
| 标准错误 | 仅输出意外执行失败的诊断信息；LabVIEW 端记录或按既有错误策略处理。 |
| 退出码 | `0` 表示脚本已完成，包括未发现安装；非零表示脚本自身无法执行。 |
| 参数 | 初始版本不接收参数；注册表键路径由脚本内部维护。 |
| 兼容性 | 仅使用 Windows 10 和 Windows 11 自带的 `cmd.exe` 与 `reg.exe`。 |

### 注册表兼容性要求

- 在可用时测试 32 位和 64 位 LabVIEW 安装。
- 不得假定选择器 EXE 的位数与已安装 LabVIEW 的位数相同。
- 将缺失的注册表值和失效的安装路径视为可跳过的非致命候选项。
- 确认 `reg.exe` 查询 `HKLM` 不需要管理员权限，且脚本不包含任何写入注册表的命令。
- 保留当前文档中的回退路径：
  - `C:\Program Files\National Instruments`
  - `C:\Program Files (x86)\National Instruments`
  - `D:`、`E:` 和 `F:` 上的等效路径

## 阶段 4：仅在需要时替换架构逻辑

仅当审计确认 `cmd/OSArchitecture.vi` 调用 WMIC 时执行本阶段。

1. 确定 `cmd/OSArchitecture.vi` 的精确输出格式及其下游调用者。
2. 新增或复用一个由 `System Exec.vi` 调用的非提权 `.bat` 脚本，以 Windows 10 和 Windows 11 自带命令提供所需的 32 位或 64 位结果；不得调用 WMIC、PowerShell、CIM 或 DISM。
3. 保持调用者当前的输出类型、文本值和错误语义。
4. 在普通和管理员 EXE 构建规格中验证行为。

若审计未发现 WMIC 调用或生产环境调用者，则不修改该 VI。

## 阶段 5：保留无关的外部进程行为

除非审计证明存在关联，`cmd/SigCheck.vi` 与 `Sigcheck` 目录和 WMIC 辅助脚本相互独立。

1. 若其支持已保存版本或签名检查，保留 `Sigcheck` 调用、可执行文件架构选择、输出解析和退出码处理。
2. 本次工作不得使用 WMI、CIM 或 PowerShell 替换 `Sigcheck`。
3. 若审计发现 `cmd/SigCheck.vi` 内存在 WMIC 命令，仅将该特定职责迁移至由 `System Exec.vi` 调用的非提权 `.bat` 脚本，其余 `Sigcheck` 职责保持不变。

## 阶段 6：移除 WMIC 产物

替换所有已确认的运行时 WMIC 调用后：

1. 删除 `cmd/install-wmic-if-missing.bat`。
2. 删除 `README.md` 中完整的 `## Windows 11 WMIC support` 章节。
3. 将新的 `cmd/GetLabVIEWInstallPaths.bat` 明确纳入 EXE 构建支持文件和 VIP 源文件集；如有需要，更新 `LabVIEW-Version-Selector.vipb` 的源文件排除项，确保过期包配置不能包含已删除的辅助脚本。
4. 在源文本和已审计的 VI 程序框图中搜索：
   - `wmic`
   - `wmic.exe`
   - `WMIC~~~~0.0.1.0`
   - `install-wmic-if-missing.bat`
   - 通过 `dism` 安装 WMIC 功能的命令
5. 发布前处理每一个剩余匹配项。

## 阶段 7：构建和打包

1. 在 `LabVIEW-Version-Selector.lvproj` 中构建 `LabVIEW Version Selector`。
2. 构建 `LabVIEW Version Selector(admin)`。
3. 检查两个构建输出中的损坏 VI 和意外缺失依赖，并确认两个构建输出都包含 `GetLabVIEWInstallPaths.bat`。
4. 使用 `LabVIEW-Version-Selector.vipb` 构建 VIP。
5. 检查生成的 VIP 内容，确认包含 `cmd/GetLabVIEWInstallPaths.bat` 且不包含 `cmd/install-wmic-if-missing.bat`。

## 验证矩阵

| 场景 | 操作 | 预期结果 |
| --- | --- | --- |
| Windows 10，WMIC 可用 | 使用代表性的 `.vi` 和 `.lvproj` 运行普通 EXE。 | 批处理脚本发现已安装 LabVIEW 版本；选定文件由所选版本打开。 |
| Windows 11，WMIC 不可用 | 使用代表性的 `.vi` 和 `.lvproj` 运行普通 EXE。 | 发现和选择正常，无错误、UAC 提示、DISM 调用或 WMIC 安装请求。 |
| 普通用户账户 | 从普通 EXE 运行安装发现。 | `System Exec.vi` 成功执行脚本，不触发 UAC；脚本仅执行注册表和目录读取。 |
| 64 位 LabVIEW 安装 | 从普通 EXE 运行安装发现。 | 批处理脚本的注册表查询为该安装返回一条有效记录。 |
| 32 位 LabVIEW 安装 | 从普通 EXE 运行安装发现。 | 批处理脚本检查备用注册表视图，并为该安装返回一条有效记录。 |
| 位于文档扫描根目录下的非标准安装 | 使用注册表测试数据中不存在、但位于 `C:` 至 `F:` NI 目录的有效 LabVIEW 安装。 | 目录回退能够发现该安装，且仍可选择。 |
| 失效注册表值 | 创建或使用安装路径中不再含 `LabVIEW.exe` 的注册表值。 | 跳过无效候选项；发现过程继续且不失败。 |
| 文件关联 | 安装生成的 VIP，运行安装后动作，再打开 `.vi`、`.ctl`、`.lvlib` 和 `.lvproj`。 | 现有文件关联行为保持不变。 |
| 卸载 | 运行 VIP 卸载动作。 | 现有文件关联清理行为保持不变。 |
| 包审计 | 检查构建的 VIP，并搜索已审计的程序框图和源代码。 | 不存在 WMIC 辅助脚本、WMIC 命令或 WMIC 安装说明。 |

## 发布门禁

仅当下列条件全部满足时才能发布：

1. `labview-mcp` 审计记录表明每条原有 WMIC 路径均已删除或替换。
2. Windows 10 和 Windows 11 场景均通过，且不依赖 WMIC。
3. 已在对应 LabVIEW 安装可用时测试 32 位和 64 位注册表视图，以及普通用户账户下的脚本执行。
4. 两个 EXE 构建规格均构建成功且没有损坏 VI。
5. 生成的 VIP 不包含已删除的批处理脚本。
