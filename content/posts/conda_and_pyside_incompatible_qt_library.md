Title: conda, pyside and incompatible QT libraries
Date:  2016-10-27
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/dash_gource.gif

Design a UI in Qt Designer on Linux. Commit it github, move to a windows
system for testing. Now you get the message:


    Cannot mix incompatible Qt library (version 0x40807) with this library
    (version 0x40804)



What this means is that you included SVG files in one of your resource
.qrc's. They look fine in QT Designer on both Linux and Windows.  When
you attempt to run the application, it fails with the error message
above.  Only on windows though. And only after creating the project on a
Linux machine. 

To fix this, aim to more closely match the environment configurations on
both Linux and windows. The approach below will give you SVG and PNG
support on Linux, but PNG support only on windows.

Windows setup:

    git clone https://github.com/WasatchPhotonics/Dash
    conda create --name conda_dash_pyside_specified pyside=1.2.0
    source activate conda_dash_pyside_specified
    conda install numpy pillow pytest pyqtgraph pytest-cov                                    
    python setup.py develop                                                                        
    ./scripts/rebuild_resources.sh                                                                 
    py.test 


Linux setup:

    git clone https://github.com/WasatchPhotonics/Dash
    conda create --name conda_dash_pyside_specified pyside=1.2.0
    source activate conda_dash_pyside_specified
    conda install numpy pillow pytest pyqtgraph pytest-cov                                    
    conda remove pyside
    pip install pyside==1.2.0
    python setup.py develop                                                                        
    ./scripts/rebuild_resources.sh                                                                 
    py.test 
                                                                                                    
