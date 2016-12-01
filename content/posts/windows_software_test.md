Title: Long term testing of windows software in virtualbox
Date:  2016-12-01
Category: articles
Tags: wasatch photonics


Requirements: Ensure that the software is stable.

Specifically, run the software for weeks, verify that the RAM, CPU and
disk usage behaves predictably. Ensure there are no crashes. Prevent
windows from invalidating the process by rebooting due to windows
updates.

The steps below were followed for creating 3 separate machines running
rolling deployments of builds from appveyor for the Dash development
builds. 

The flowchart on this page:
[TechNet Licensing](https://technet.microsoft.com/en-us/library/dd981009.aspx)
mentions a 120 day grace period. Make sure you add a reminder to rebuild
the virtual machines from scratch every 100 days.

Procedure: High memory host computer running Fedora Core 24.

Guest OS installations of Windows 7 and Windows 10
Start each guest OS, make sure it updates a few times.
Set it to auto login.
Install [rainmeter](https://www.rainmeter.net/)
Use the [Visual
Chunk](http://bonsewswesa.deviantart.com/art/Visual-Chunk-1-7-643176812) skin.
Place the controls for:
    SysStats one drive, no power
    All uptime, rca, tbt, 24hour

In the guest OS, Disable all network adapters.
Install the virtualbox guest additions

Create a shared folder on the host os (Downloads), and call it
dash-downloads for the guest.

Mount the guest addition with:

    net srv x: \\vboxsrv\dash-downloads


On the Host Os, download the most recent version to that folder.
Manually run the installer on each guest os.
Start the Dash program.
Position it so the rainmeter visual chunk statistics can be seen at all
times.

Every day, record the eyeball-averaged readings from the rainmeter
display on each guest OS. This is rough, but what you are looking for
here is a lack of dramatic changes.
