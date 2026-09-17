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
		<Item Name="lvpane_probe.vi" Type="VI" URL="/C/Users/nevstop/AppData/Local/Temp/LabVIEWMCP/helpers/lvpane_probe.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
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
