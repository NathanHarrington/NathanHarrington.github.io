Title: SVG icons in PySide on Windows 7
Date:  2016-12-20
Category: articles
Tags: wasatch photonics

Your application icons look great. They are saved in .svg format, loaded
into Qt Designer, and distributed with pyinstaller as resource files.

Except on windows 7.

No error messages, no crashes, no information on why the icons are missing. 

The issue is the included qsvg4.dll distributed with the application by
pyinstaller. It appears to be the wrong file.

On your development windows machine, you see the following qsvg4.dll
files:


![qsvg4.dll Locations](/images/wasatch-images/qsvg4_locations.png)





Not all 22KB files are the same. Look at the file sizes in detail:






![qsvg4.dll sizes](/images/wasatch-images/qsvg4_sizes.png)



You must use the 22,016KB version in the runtime distributable. No
amount of pyinstaller machinations, includes, or path updates seem to
make this possible. You must overwrite the pyinstaller included file at
the location:

    <program files>\<application name>\qt4_plugins\imageformats\

With the qsvg4.dll file that is 22,016KB in size. In
[Dash](http://github.com/WasatchPhotonics/Dash), this is done by a
directive in the InnoSetup installation file, after the application has
been installed. When using appveyor, make sure the environment names
match precisely, as you are hard-coding file locations such as:



    Source: "C:\Miniconda\envs\conda_dash\Library\plugins\imageformats\qsvg4.dll"; \
    DestDir: "{app}\dash\qt4_plugins\imageformats"; Flags: recursesubdirs ignoreversion
 

