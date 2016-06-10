Title: Adapteva Parallella Screener (The Foreman)
Date:  2015-08-17
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/foreman_thumbnail.png



<div class="container">
    <div class="row spaced_rows">
        <div class="col-md-8">
            <!-- apparently if you leave the line below empty, you get
            to mix markdown in html like you always wanted. -->

        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-6">
            Wasatch Photonics uses [Adapteva Parallella](http://www.adapteva.com/parallella/) SKU P1601-DK03's as
            an embedded linux system. Core capabilities required include a
            USB bus that is available at least 83% of the time on boot up. A
            [screener](https://github.com/WasatchPhotonics/Foreman) was created to allow us to find the incoming Parallella
            boards that meet this level of usb availability. This setup
            consists of 4 Parallella DC adapters connected to a Phidgets
            software controlled relay. This relay turns on the devices for
            35 seconds, issues a 'lsusb' command on each device, and stores
            the status of the usb availability. The device is then turned
            off for 75 seconds, then the process is repeated. 
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-6">
        The forum post is really a great reminder of what not to do when
        documenting a problem: [USB
        Issues](https://parallella.org/forums/viewtopic.php?f=50&t=1650&start=40#p13290) You can't just present the data and expect any change. Remember that just because the data is there doesn't mean people will actually read the post, or make any changes.
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-6">
            Use this tool to summarize the data into readable graphs:
        </div> <!--left side column-->
    </div><!-- row -->
    <div class="row spaced_rows">
        <div class="col-md-6">
            <img src="/images/wasatch-images/foreman_screenshot.png"/>
        </div> <!--left side column-->
    </div><!-- row -->
</div><!-- container -->

