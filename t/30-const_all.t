use strict;
use warnings;

use Test::More;
use RPi::WiringPi::Constants qw(:all);

# pinmode

is INPUT, 0, "INPUT const ok";
is OUTPUT, 1, "OUTPUT const ok";
is PWM_OUT, 2, "PWM_OUT const ok";
is GPIO_CLOCK, 3, "GPIO_CLOCK const ok";

# state

is HIGH, 1, "HIGH ok";
is LOW, 0, "LOW ok";
is ON, 1, "OFF ok";
is OFF, 0, "ON ok";

done_testing();
