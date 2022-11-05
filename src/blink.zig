const microzig = @import("microzig");
const rp2040 = microzig.hal;
const gpio = rp2040.gpio;
const time = rp2040.time;

const led = 25;

pub fn main() void {
    gpio.reset();

    gpio.setFunction(led, .sio);

    gpio.setDir(led, .out);

    while (true) {
        gpio.toggle(led);
        time.sleepMs(1000);
    }
}
