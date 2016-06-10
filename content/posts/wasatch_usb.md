Title: WasatchUSB - bare bones USB communication with wasatch devices
Date:  2016-04-08
Category: articles
Tags: wasatch photonics


USB cameras and devices from Wasatch Photonics

This module is intended to provide the absolute bare-minimum, pure
python communication with a StrokerARMUSB board. These tests include
communication with a Phidgets relay device, to place the device in a
known power state. At Wasatch, we use this for verification of
protocol functional specifications during development of new firmware
versions.

This includes Windows LibUsb INF drivers, as well as configuration
instructions and udev rules for access on Linux.

Available on [GitHub](https://github.com/WasatchPhotonics/WasatchUSB)
