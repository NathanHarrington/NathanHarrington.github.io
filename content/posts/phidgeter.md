Title: Phidgeter - logging and convenience functions for Phidgets
Date:  2016-02-08
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/phidgeter_thumbnail.gif


[Phidgets](http://www.phidgets.com/products.php?category=9) are truly exceptional. Actual out of the box usefulness with
their [software](http://www.phidgets.com/docs/Software_Overview). The python interface can be difficult to use when
compared to other API's. Phidgeter provides logging, network, display
and convenience functions for Phidgets. Use it with
[BlueGraph](https://github.com/WasatchPhotonics/BlueGraph) for example,
for more straightforward data visualization.


Here's some examples with Phidgeter:

from phidgeter import relay

phd_relay = relay.Relay()
phd_relay.one_toggle()


Emit data from a Phidget IR sensor on the command line:

    import time
    
    from phidgeter.temperature import IRSensor
    
    if __name__ == "__main__":
        ir_temp = IRSensor()
        ir_temp.open_phidget()
        while(1):
            print ir_temp.get_temperature()
            time.sleep(0.10)

Available on [GitHub](https://github.com/WasatchPhotonics/Phidgeter)
