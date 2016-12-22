Title: LibUsb backends using pyinstaller and appveyor
Date:  2016-12-21
Category: articles
Tags: wasatch photonics



With a development machine all set up for communicating in python with
pyusb and libusb on Windows 10. The signed drivers are available, the
device is communicating on the build machine. Building the installer on
the development machine also is successful. Redistributing the installer
built on the development machine delivers the expected experience.

The problem is when building on a [Continuous
Integration](http://www.appveyor.com) environment. PyInstaller
builds an exe.  InnoSetup builds a distributable installer. The
installer is succesful. Then when running the installed application,
you'll see the message:


    Traceback (most recent call last):
      ...
      File "site-packages\usb\legacy.py", line 353, in busses
      File "site-packages\usb\core.py", line 1263, in find
      usb.core.NoBackendError: No backend available
     

There are many subtle differences between a typical windows 10 build
environment and the Appveyor configuration. Here are the changes
required to have an installer built on appveyor:


In setup.py, manually include pyusb:


    requires = [
        "pytest-qt",
        ...
        "pyusb",
        ]



In appveyor configuration, manually include pyusb:


    install:
        - "set PATH=%MINICONDA%;%MINICONDA%\\Scripts;%PATH%" 
        ...
        - pip install pyusb



Straightforward to this point. Sure, appveyor should respect the
setup.py requirement of pyusb, but for some reason it's not listed in
conda list and pip freeze post install section. The workaround is to
specify it manually.

Again, this works on the windows 10 development machine, but not on
appveyor. The no backend available message is still present, but only on
the appveyor install. Further googling of the error message shows that
this problem has already been
[fixed](https://github.com/pyinstaller/pyinstaller/issues/1891). Thanks!

So all you need now is the development version of pyinstaller.
Instructions say to install the development version of pyinstaller that
includes the new usb hook like so:


  (In appveyor.yml)
  - pip install https://github.com/pyinstaller/pyinstaller/archive/develop.zip


The above will cause a +<commit hash> to appear in the pyinstaller
version suffix. This in turn will cause a ValueError when pyinstaller is
run. But only on appveyor:


    Traceback (most recent call last):
      File "C:\Miniconda\envs\conda_dash\Scripts\pyinstaller-script.py", line 6, in <module>
        from pkg_resources import load_entry_point
      File "C:\Miniconda\envs\conda_dash\lib\site-packages\pkg_resources.py", line 2850, in <module>
        working_set.require(__requires__)
      File "C:\Miniconda\envs\conda_dash\lib\site-packages\pkg_resources.py", line 696, in require
        needed = self.resolve(parse_requirements(requirements))
      File "C:\Miniconda\envs\conda_dash\lib\site-packages\pkg_resources.py", line 566, in resolve
        requirements = list(requirements)[::-1]  # set up the stack
      File "C:\Miniconda\envs\conda_dash\lib\site-packages\pkg_resources.py", line 2650, in parse_requirements
        line, p, specs = scan_list(VERSION,LINE_END,line,p,(1,2),"version spec")
      File "C:\Miniconda\envs\conda_dash\lib\site-packages\pkg_resources.py", line 2628, in scan_list
        "Expected ',' or end-of-list in",line,"at",line[p:]
      ValueError: ("Expected ',' or end-of-list in", 'PyInstaller==3.3.dev0+483c819', 'at', '+483c819')


The fix is to strip out the commit hash suffix from the installed
version number. Run setup.py with sdist first to insert just
the major version number without the commit hash suffix.


  - pip uninstall -y pyinstaller
  - git clone https://github.com/pyinstaller/pyinstaller.git
  - cd pyinstaller
  - python setup.py sdist
  - python setup.py install
  - cd ..



This is still not enough. You'll need to include the libusb dll for use
by the application.  In the InnoSetup configuration file, include the
line:


    Source: "support_files\libusb_drivers\x86\libusb0_x86.dll"; \
    DestDir: "{app}\dash\"; Flags: recursesubdirs ignoreversion

