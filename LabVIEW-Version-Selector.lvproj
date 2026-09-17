<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">17.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="resource" Type="Folder" URL="../resource">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="_vip_support" Type="Folder" URL="../_vip_support">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Sigcheck" Type="Folder" URL="../Sigcheck">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="cmd" Type="Folder">
			<Item Name="OSArchitecture.vi" Type="VI" URL="../cmd/OSArchitecture.vi"/>
			<Item Name="SigCheck.vi" Type="VI" URL="../cmd/SigCheck.vi"/>
			<Item Name="assoc.vi" Type="VI" URL="../cmd/assoc.vi"/>
			<Item Name="Open Explorer Window.vi" Type="VI" URL="../cmd/Open Explorer Window.vi"/>
			<Item Name="RegPatchGenerator.vi" Type="VI" URL="../cmd/RegPatchGenerator.vi"/>
		</Item>
		<Item Name="application.lvlib" Type="Library" URL="../Application/application.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="NI_App_Builder_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/AppBuilder/AB_API_Simple/NI_App_Builder_API.lvlib"/>
				<Item Name="Invoke BuildTarget.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Invoke BuildTarget.vi"/>
				<Item Name="GetTargetBuildSpecs.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/GetTargetBuildSpecs.vi"/>
				<Item Name="GetTargetBuildSpecs (project reference).vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/GetTargetBuildSpecs (project reference).vi"/>
				<Item Name="AB_Generate_Error_Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/AB_Generate_Error_Cluster.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="RectSize.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/RectSize.vi"/>
				<Item Name="Point2Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/Point2Rect.vi"/>
				<Item Name="PointInRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/PointInRect.vi"/>
				<Item Name="InsetRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/InsetRect.vi"/>
				<Item Name="RectCentroid.vi" Type="VI" URL="/&lt;vilib&gt;/picture/PictureSupport.llb/RectCentroid.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Parse State Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Parse State Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Add State(s) to Queue__JKI_lib_State_Machine.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/State Machine/_JKI_lib_State_Machine.llb/Add State(s) to Queue__JKI_lib_State_Machine.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="TD_Get Cluster Information.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/TD_Get Cluster Information.vi"/>
				<Item Name="Type Descriptor I16 Array.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Descriptor I16 Array.ctl"/>
				<Item Name="Type Descriptor I16.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Descriptor I16.ctl"/>
				<Item Name="Get Type Code from I16 Array And Pos.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Get Type Code from I16 Array And Pos.vi"/>
				<Item Name="Type Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Enum.ctl"/>
				<Item Name="Type Code.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Code.ctl"/>
				<Item Name="TD_Get Ref Info.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/TD_Get Ref Info.vi"/>
				<Item Name="TD_Refnum Kind.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/TD_Refnum Kind.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="Fit VI window_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window_nevstop.vi"/>
				<Item Name="Fit VI window to Visible Content_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Visible Content_nevstop.vi"/>
				<Item Name="Using ParentVIRef If Input Invalid_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Application/Using ParentVIRef If Input Invalid_nevstop.vi"/>
				<Item Name="Fit VI window to Largest Dec_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Largest Dec_nevstop.vi"/>
				<Item Name="Fit VI window to Content_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Content_nevstop.vi"/>
				<Item Name="Fit VI window to Caller Center_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Caller Center_nevstop.vi"/>
				<Item Name="Fit VI window to Panel Center_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Panel Center_nevstop.vi"/>
				<Item Name="Fit VI window to Pane Center_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Pane Center_nevstop.vi"/>
				<Item Name="Fit VI window to Rect_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Dialog &amp; Interface/Fit VI window to Rect_nevstop.vi"/>
				<Item Name="_reuse_openG_nevstop.lvlib" Type="Library" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/_openG/_reuse_openG_nevstop.lvlib"/>
				<Item Name="Remove Duplicates from 1D Array_nevstop.vim" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Array/Remove Duplicates from 1D Array_nevstop.vim"/>
				<Item Name="OpenG Variant Configuration File_nevstop.lvlib" Type="Library" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Configuration/_OpenG Variant Configuration File/OpenG Variant Configuration File_nevstop.lvlib"/>
				<Item Name="ArrayToCluster_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Data/ArrayToCluster_nevstop.vi"/>
				<Item Name="ClusterToArray_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/Data/ClusterToArray_nevstop.vi"/>
				<Item Name="Format Variant into String Advance_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/String/Format Variant into String Advance_nevstop.vi"/>
				<Item Name="Format Variant Attributes into String_nevstop.vi" Type="VI" URL="/&lt;userlib&gt;/NEVSTOP-Programming-Palette/String/Format Variant Attributes into String_nevstop.vi"/>
			</Item>
			<Item Name="provcom_StringGlobals.vi" Type="VI" URL="/&lt;resource&gt;/Framework/Providers/Common/provcom_StringGlobals.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="LabVIEW Version Selector" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{4BA35AA7-3C23-4AED-AD2F-38C82E30055D}</Property>
				<Property Name="App_INI_GUID" Type="Str">{4D69A033-D052-4872-A47B-14BB417FF73D}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{4F45A179-27D4-4959-B338-D13999D79304}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{DD676F47-F0F4-4760-9B2B-9815246A04D2}</Property>
				<Property Name="Bld_version.build" Type="Int">50</Property>
				<Property Name="Bld_version.major" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">LabVIEW Version Selector.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Build/LabVIEW Version Selector.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Build</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">SigCheck</Property>
				<Property Name="Destination[2].path" Type="Path">../Build/SigCheck</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Exe_cmdLineArgs" Type="Bool">true</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/resource/app.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{C3146BC5-98A5-42F9-A758-2834598A5B4A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/application.lvlib/application.lvclass</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/application.lvlib/application.lvclass/application.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Sigcheck</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">NEVSTOP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="TgtF_internalName" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright ?2022 NEVSTOP</Property>
				<Property Name="TgtF_productName" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{0D409103-E981-4697-973C-5AAD52BDD59E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LabVIEW Version Selector.exe</Property>
			</Item>
			<Item Name="LabVIEW Version Selector(admin)" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{D1CE168F-7DE9-4125-A199-1C2E4A5F23CA}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E6070CFE-E84F-496A-B72A-6D0AC32F7704}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.manifest" Type="Ref">/My Computer/resource/vista.adminUser.manifest</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E997DB66-CC0F-4E4E-88CB-5D4BB62FE9F7}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LabVIEW Version Selector(admin)</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{997CCF92-FE59-426B-99F5-91767567D53D}</Property>
				<Property Name="Bld_version.build" Type="Int">42</Property>
				<Property Name="Bld_version.major" Type="Int">2</Property>
				<Property Name="Destination[0].destName" Type="Str">LabVIEW Version Selector.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Build/LabVIEW Version Selector.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Build</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">SigCheck</Property>
				<Property Name="Destination[2].path" Type="Path">../Build/SigCheck</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Exe_cmdLineArgs" Type="Bool">true</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/resource/app.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{C3146BC5-98A5-42F9-A758-2834598A5B4A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/application.lvlib/application.lvclass</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/application.lvlib/application.lvclass/application.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Sigcheck</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">NEVSTOP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="TgtF_internalName" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright ?2022 NEVSTOP</Property>
				<Property Name="TgtF_productName" Type="Str">LabVIEW Version Selector</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{33DAE294-2234-4678-AB3B-C98668264085}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LabVIEW Version Selector.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
