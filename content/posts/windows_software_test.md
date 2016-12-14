Title: Long term testing of windows software in virtualbox
Date:  2016-12-01
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/dash_software_test_thumbnail.jpg


Requirements: Ensure that the software is stable.

Specifically, run the software for weeks, verify that the RAM, CPU and
disk usage behaves predictably. Ensure there are no crashes. Prevent
windows from invalidating the process by rebooting due to windows
updates.

The steps below were followed for creating multiple machines running
rolling deployments of builds from appveyor for the Dash development
testing. 

The flowchart on this page:
[TechNet Licensing](https://technet.microsoft.com/en-us/library/dd981009.aspx)
mentions a 120 day grace period. Make sure you add a reminder to rebuild
the virtual machines from scratch every 100 days.

Procedure: High memory host computer running Fedora Core 24.

Guest OS installations of Windows 10, using default parameters in
VirtualBox. These systems were built with a NAT network and 2GB RAM
each.

Start each guest OS, make sure it updates a few times.
Set it to auto login.

On the Host OS:

    VBoxManage.exe setextradata "VM-Name" CustomVideoMode1 1920x1080x32

On the Guest OS:

    Open network adapter properties, change the IpV4 TCP settings to
    have the DNS point to 10.10.10.10. This way numerically addressed
    network locations will still function, but windows update will not
    be able to reach it's servers. This is used to permit mapping of
    local samba shared where the rolling builds are stored.

    Map the network drive by IP address.

    Install [rainmeter](https://www.rainmeter.net/)
    Use the [Visual
    Chunk](http://bonsewswesa.deviantart.com/art/Visual-Chunk-1-7-643176812) skin.
    Place the controls for:
        SysStats one drive, no power
        All uptime, rca, tbt, 24hour

        Set both control groups to Position->Stay Topmost

    "Choose when to turn off the screen" -> Never

    Change the display resolution to 1920x1080


Do not use this 'root image'. Make clones of this image. Do not
re-initialize the MAC address of each adapter, or you will have to
change the DNS entry for each virtual machine as described above.

Every day, record the eyeball-averaged readings from the rainmeter
display on each guest OS. This is rough, but what you are looking for
here is a lack of dramatic changes.

What does that look like at Wasatch?


![Dash Software Test](/images/wasatch-images/dash_software_test.jpg)
