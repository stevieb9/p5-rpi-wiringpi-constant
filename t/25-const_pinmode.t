use strict;
use warnings;

use Test::More;
use RPi::WiringPi::Constants qw(:pinmode);

is INPUT, 0, "INPUT const ok";
is OUTPUT, 1, "OUTPUT const ok";
is PWM_OUT, 2, "PWM_OUT const ok";
is GPIO_CLOCK, 3, "GPIO_CLOCK const ok";


done_testing();
