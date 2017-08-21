Title: Innosetup and manifest files for HiDPI displays
Date:  2017-08-21
Category: articles
Tags: wasatch photonics

Use PySide 1.2 and Python 2.7. Deploy to various HiDPI displays for
testing.

You may see text that is either clipped, too large, or too small. 
Everything looks fine on Linux, but on Windows with the default scaling
for HiDPI displays (125%), it can look like this:

[![Fat font issue](/images/wasatch-images/fat_font_issue.png)](/images/wasatch-images/fat_font_issue.png)


You'll want it to look like this:

[![Fixed Fat font
issue](/images/wasatch-images/fixed_fat_font_issue.png)](/images/wasatch-images/fixed_fat_font_issue.png)


The solution is to modify your innosetup configuration to modify the
registry:


    [Registry]
    ; PySide/PyQt 4.x does not support HiDPI displays. This mitigation
    ; approach turns on system-wide preference for external manifest, then
    ; installs a custom manifest file
    Root: HKLM64; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide"; ValueType: dword; ValueName: "PreferExternalManifest"; ValueData: "1"; check: IsWin64;
    Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide"; ValueType: dword; ValueName: "PreferExternalManifest"; ValueData: "1"; check: "not IsWin64";


Then copy the manifest file:


    [Files]
    ...
    ; Manifest file for HiDPI mitigation - see above
    Source: "support_files\Enlighten.exe.manifest"; DestDir: "{app}\Enlighten\"; Flags: recursesubdirs ignoreversion
    ...
                                       
 

All is well, except when running the application post install in
InnoSetup. 

If you run post install you will see the application run with the
wrong HiDPI configuration, but if you run after the
installer has terminated, the application looks correct.

The temporary fix is to disable running post install, and depend on the
user to complete the install then run the application manually.

Do you have a solution for this? If so, please update the
[PySideApp](https://github.com/WasatchPhotonics/PySideApp)
demonstration application.
