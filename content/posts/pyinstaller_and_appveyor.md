Title: Pyinstaller and filenames requiring .py extensions, on appveyor
Date:  2016-12-08
Category: articles
Tags: wasatch photonics


With a code base that builds with pyinstaller on a Windows 10 Home
system, and on appveyor. For example:

[Dash 75dd852554](https://github.com/WasatchPhotonics/Dash/tree/75dd8525541cc5f55a73bce91884628324e2776b)

Run a pyinstaller script like:

    pyinstaller 
        --distpath=scripts/built-dist 
        --workpath=scripts/work-path 
        --noconfirm 
        --clean 
        --icon dash/assets/uic_qrc/images/DashIcon.ico 
        --specpath scripts 
        scripts/Dash.py


On Windows 10 Home and premium, you will see a succesful build.  On
appveyor, you will see lines like:

    ...
    493882 INFO: Building PKG (CArchive) out00-PKG.pkg
    494023 INFO: Bootloader c:\miniconda\envs\conda_dash\lib\site-packages\PyInstaller\bootloader\Windows-32bit\run.exe
    494023 INFO: checking EXE
    494023 INFO: Building EXE because out00-EXE.toc is non existent
    494023 INFO: Building EXE from out00-EXE.toc
    ...



Change the Dash.py filename to Dash, and rebuild with the command:

    pyinstaller 
        --distpath=scripts/built-dist 
        --workpath=scripts/work-path 
        --noconfirm 
        --clean 
        --icon dash/assets/uic_qrc/images/DashIcon.ico 
        --specpath scripts 
        scripts/Dash


Windows 10 Home will still build fine. The appveyor build will break
however, with the message below:

    ...
    90423 INFO: Building PKG (CArchive) out00-PKG.pkg
    Traceback (most recent call last):
    File "c:\miniconda\envs\conda_dash\lib\runpy.py", line 174, in _run_module_as_main
        "__main__", fname, loader, pkg_name)
    File "c:\miniconda\envs\conda_dash\lib\runpy.py", line 72, in _run_code
        exec code in run_globals
    ...
        code = get_code_object(nm, pathnm)
    File "c:\miniconda\envs\conda_dash\lib\site-packages\PyInstaller\building\utils.py", line 545, in get_code_object
        co = _load_code(modname, filename)
    File "c:\miniconda\envs\conda_dash\lib\site-packages\PyInstaller\building\utils.py", line 521, in _load_code
        assert loader and hasattr(loader, 'get_code')
    AssertionError

This happens in a wide variety of contexts, with various indicators
pointing back to the lack of the .py extension being an issue:

[Github issue](https://github.com/pyinstaller/pyinstaller/issues/2093)
[SO Discussion](http://stackoverflow.com/questions/37951808/pyinstaller-assertion-error-used-to-work-fine-now-it-doesnt) 

This can be particularly insidious to track, as you'll spend most of the
time searching the git diffs for file <i>content</i> changes, instead of
file extension changes.
