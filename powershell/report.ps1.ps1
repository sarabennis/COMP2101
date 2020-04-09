"**************************************************************************"
"Hardware description"
gwmi -class win32_computersystem |fl Name,Domain, Manufacturer,Model
"***************************************************************************"
"Operating system"
gwmi win32_operatingsystem |fl Name,Version
"**************************************************************************"
"Processor"

gwmi win32_processor | fl Name,description,MaxClockSpeed, NumberOfCores,L1CacheSize,L2CacheSize,L3CacheSize 
"****************************************************************************"
"RAM Summary"
$storagecapacity = 0
gwmi -class win32_physicalmemory | 
    foreach {
        new-object -TypeName psobject -Property @{  
        Vendor =$_.manufacture
        Description = $_.description       
        "Speed(MHz)" =$_.speed                                                          
        "Size(GB)"= $_.capacity/1gb
        Bank = $_.banklabel                              
        Slot = $_.devicelocator                  
    }                 
$storagecapacity += $_.capacity/1gb} |
    format-table -auto @{n='Vendor';e={ if ($_.manufacturer) {$_.manufacturer} else {"VMWare"} } }, description, "Speed(MHz)","Size(GB)", Bank, Slot
"Total RAM = ${storagecapacity} GB"
"*********************************************************************************"
"Physicial disk drives"
$disks=Get-WmiObject win32_logicaldisk |  where-object size -gt 0 
$diskConfig=foreach ($disk in $disks) {
$diskpartition = $disk.GetRelated('win32_diskpartition')
$drive = $diskpartition.GetRelated('win32_diskdrive')
    
     new-object -TypeName psobject -Property @{
     "Vendor" = $drive.manufacturer
     "model" = $drive.model
     "Size(GB)"=$drive.size/1gb -as [int]
     "Free space(GB)"=$disk.freespace/1gb -as [int] 
     "Free disk space in %"=100*$disk.freespace/$drive.size  -as [int]

}
} 
$diskConfig|Format-Table -AutoSize "Vendor","model","Size(GB)","Free space(GB)","Free disk space in %"
"*****************************************************************************************************"
"Summary of vedio card"
gwmi win32_videocontroller | 
    format-list @{n="Video Card Vendor"; e={$_.AdapterCompatibility}}, Description,
    @{n="Current Screen Resolution"; e={$_.VideoModeDescription}}
"*************************************************************************************************"
