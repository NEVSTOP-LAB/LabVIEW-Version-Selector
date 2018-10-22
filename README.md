Multi-LabVIEW Selector
===================================

Automatically Select the correct LabVIEW version to open LabVIEW files.

## Attention

   1. You need to run VIPM as administor, bucause the installing process need to change windows registry。
   2. Currently, you need to associate related file extensions to the build exe manually. The built exe locates here: [LabVIEW]\project\_NEVSTOP\Multi-LabVIEW Selector\Build.  
   

LabVIEW in these folders will be discovered:    
 - C:\Program Files\National Instruments
 - C:\Program Files (x86)\National Instruments
 - D:\Program Files\National Instruments
 - D:\Program Files (x86)\National Instruments
 - E:\Program Files\National Instruments
 - E:\Program Files (x86)\National Instruments
 - F:\Program Files\National Instruments
 - F:\Program Files (x86)\National Instruments
 

Related filetypes of:    
 - .lvproj
 - .lvlib
 - .lvclass
 - .llb
 - .vi
 - .vit
 - .ctl
 - .xctl 
 - .lvlibp
 - .lvsc
 - .lvtest
 - .lvr
 - .lvrbt
 - .lvvect

## Dependencies

 - [OpenG Libraries](http://sine.ni.com/nips/cds/view/p/lang/zhs/nid/209027)
 - [JKI State Machine](https://github.com/JKISoftware/JKI-State-Machine)