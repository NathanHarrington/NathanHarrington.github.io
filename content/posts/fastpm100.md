Title: FastPM100 - High speed acquisition and visualization of ThorLabs PM100 power meter readings 
Date: 2016-03-21
Category: articles

[![FastPM100](/images/wasatch-images/fastpm100_thumbnail.gif)](https://github.com/WasatchPhotonics/FastPM100)

Visualize much higher speed laser power meter readings than the [ThorLabs
Optical power
meter](https://www.thorlabs.com/software_pages/ViewSoftwarePage.cfm?Code=PM100x) software. Use [zmq](http://zeromq.org) and multiple visualization modes
to show instantaneous and long term laser power meter trends. This is
used at [Wasatch Photonics](http://wasatchphotonics.com) for laser output power stability of our laser
can diodes. 

It's also useful for power on visualizations of the various mode hops
and other instabilities as the laser transitions through various
temperatures and feedback loops.

We use this in concert with a
[BoardTester](https://github.com/WasatchPhotonics/BoardTester) script to create a long term
data logging setup that also permits high resolution instantaneous
visualization.

FastPM100 is one of the first applications that uses the
[PySideApp](https://github.com/WasatchPhotonics/PySideApp)
starter project. This is essential for high speed visualization and
lag-free hardware acquisitions.
