Title: LuminanceLabel - Animated overlay and on-screen luminance measurements
Date:  2015-11-12
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/luminancelabel_thumbnail.gif


Demonstration video on [youtube](https://youtu.be/9qmNLBNOKwY)

Uses PyQt to place a transparent overlay on the screen, takes a
screenshot and processes the area underneath the overlay designator.
Luminance values are computed and displayed on the label, and written to
stdout.

This is used for evaluting the displayed imagery at multiple frames per
second for imaging software.

Includes tests with QtTest that establish a window, then create an
overlay window for known luminance values.

Available on [GitHub](https://github.com/WasatchPhotonics/LuminanceLabel)
