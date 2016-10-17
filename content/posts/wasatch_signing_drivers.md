Title: Signing Drivers - Windows 10 and Cypress FX2/FX3 USB
Date:  2016-10-17
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/win8_unsigned_inf.png


2016-09-14 16:53 signed windows 10 drivers:

The best resource for this process is clearly David Graysons [Practical
Windows Code and Driver Signing](http://www.davidegrayson.com/signing/)

Here are the refined points in that article for aparticular use case: Windows 7 and greater.  Installing a driver package without loading a kernel module.

-------------

1. Go to [GlobalSign](https://www.globalsign.com/en/code-signing-certificate/). Use their challenging interface to sign up for the "Code Signing" product. This costs about $219. Do this first as they then have to "verify your identity". For [Wasatch Photonics](http://wasatchphotonics.com), this meant calling us on the phone and telling us that we needed to provide more documentation that we were a real company. This is after I pointed them to the our [NC official records](https://www.sosnc.gov/Search/filings/9737537) showing our phone number. I had to suggest we would move to a competitor certificate service provider before things started to progress. After this is complete, download the .pfx file into the same directory as the drivers to sign. This is the most difficult and time consuming part of the process.


2. Download and install the [Windows Driver
   Kit](https://developer.microsoft.com/en-us/windows/hardware/windows-driver-kit)


3. Use your INF files of choice. We modified the provided [Cypress FX2/FX3
   Drivers](http://www.cypress.com/knowledge-base-article/drivers-ez-usb-fx1-fx2lp-and-fx3-kba94413). 


4. Modify the INF files to include your custom Vendor ID and Product ID:


    %VID_04B4&PID_1000.DeviceDesc%=CyUsb3, USB\VID_04B4&PID_1000

5. Convert the modified INF file into a CAT file:

    >    "C:\Program Files (x86)\Windows Kits\10\bin\x86\inf2cat"    
    >    /v    
    >    /driver:%~dp0    
    >    /os:XP_X86,Vista_X86,Vista_X64,7_X86,7_X64,8_X86,8_X64,6_3_X86,6_3_X64,10_X86,10_X64    


6.  From David's instructions: "Be sure to install GlobalSign's R1-R3 cross-certificate on the computer that will be making signatures."  This means download the r1cross.cer right click it and select "install certificate", then accept all the defaults.


7. Then run the command to actually sign the drivers:


    >   "C:\Program Files (x86)\Windows Kits\10\bin\x86\signtool"  
    >   sign  
    >   /v  
    >   /f <your pfx file>  
    >   /p <password>   
    >   /n "Wasatch Photonics"   
    >   /fd sha1   
    >   /tr http://timestamp.globalsign.com/?signature=sha2   
    >   /td sha256   
    >   cyusb3.cat  


8. Then copy the signed files (minus the PFX key and instructions) to the
INF_DRIVERS folder distributed as part of the installer build. And
example below is included for InnoSetup

    >   Filename: "pnputil"; Parameters: "-i -a   
    >   ""{app}\stroker_drivers\Win10\cyusb3.inf"" ";   
    >   StatusMsg: "Installing WP drivers (this may take a few seconds) ...";   
    >   Flags: runhidden  
    >   
