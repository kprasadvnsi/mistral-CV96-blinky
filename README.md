# A LED blink example for the Chameleon96

## Build and run

We are using only open source tools to make this Led blink example.

Please follow this [link](https://github.com/Ravenslofty/mistral/issues/16#issuecomment-956179524) for the toolchain setup.

Make a clone of this repository.
```
git clone https://github.com/kprasadvnsi/mistral-CV96-blinky.git

cd mistral-CV96-blinky

make blinky.rbf
```

### Run this example with the openFPGALoader.

There is no official support for the Chameleon96 in the openFPGALoader yet but we can easily make it work for our board.

Plug a USB cable to usb blaster port on Chameleon96 and other end of cable to a USB-2 port.

```
openFPGALoader --probe-firmware < your intelFPGA_lite installation>/21.1/quartus/linux64/blaster_6810.hex -c usb-blasterII blinky.rbf
```

You should see the yellow light blink on the Chameleon96.