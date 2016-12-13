Title: GTX 960 with Fedora Core 24
Date:  2016-12-12
Category: articles

Use an Nvidia Geforce GTX 960 with Fedora Core 24.

There are alot of useful guides:


[If Not True Then False](https://www.if-not-true-then-false.com/2015/fedora-nvidia-guide/)
[Unixmen](https://www.unixmen.com/install-nvidia-drivers-fedora-24/)
[RPMFusion](https://rpmfusion.org/Howto/nVidia)



Here are the exact steps followed to use the nvidia card:

Go to the [Nvidia Drivers](http://www.nvidia.com/Download/Find.aspx?lang=en-us) page.

Select the appropriate product, operating system etc. These steps use:

NVIDIA-Linux-x86_64-375.20.run 375.20 (November 18, 2016) 


    sudo dnf -y update
    #(20 minutes later...)
    reboot

    dnf install kernel-devel kernel-headers
    dnf install gcc dkms acpid

    echo 'blacklist nouveau' >> /etc/modprobe.d/disable-nouveau.conf
    echo 'nouveau modeset=0' >> /etc/modprobe.d/disable-nouveau.conf

    dnf install xorg-x11-drv-nvidia akmod-nvidia "kernel-devel-uname-r == $(uname -r)"
    dnf update -y


    chmod +x NVIDIA-Linux-x86_64-375.20.run
    ./NVIDIA-Linux-x86_64-375.20.run
    # (Accept defaults)
    reboot
