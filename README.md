LabVIEW Version Selector
===================================

Automatically Select the correct LabVIEW version to open LabVIEW files. 

Related filetypes of: `.lvproj`/`.lvlib`/`.lvclass`/`.llb`/`.vi`/`.vit`/`.ctl`/`.xctl`/`.lvlibp`/`.lvtest`

After `LabVIEW Version Selector.exe` is used to open file of those types, you have a chance to see the file's saved version and option to choose the version to open it.

![image](https://user-images.githubusercontent.com/8196752/198526226-0ca079f3-e9c1-41de-b14c-12358854a554.png)

## Development Envrionment

 - LabVEW 2014
 - VIPM 2020.3

### Dependencies

 - [OpenG Libraries](http://sine.ni.com/nips/cds/view/p/lang/zhs/nid/209027)
 - [JKI State Machine](https://github.com/JKISoftware/JKI-State-Machine)

## Attention

   1. Currently, you need to associate related file extensions to the build exe manually with double clicking the Registry Patch File.  
   2. LabVIEW in these folders will be discovered:    
         - C:\Program Files\National Instruments
         - C:\Program Files (x86)\National Instruments
         - D:\Program Files\National Instruments
         - D:\Program Files (x86)\National Instruments
         - E:\Program Files\National Instruments
         - E:\Program Files (x86)\National Instruments
         - F:\Program Files\National Instruments
         - F:\Program Files (x86)\National Instruments
 
