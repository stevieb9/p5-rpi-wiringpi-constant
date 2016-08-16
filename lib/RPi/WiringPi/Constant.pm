package RPi::WiringPi::Constant;

use strict;
use warnings;

our $VERSION = '0.02';

require Exporter;
use base qw( Exporter );
our @EXPORT_OK = ();
our %EXPORT_TAGS = ( all => \@EXPORT_OK );

use constant {
    INPUT => 0,
    OUTPUT => 1,
    PWM_OUT => 2,
    GPIO_CLOCK => 3,
};

{ # pinmodes
    my @const = qw(
        INPUT
        OUTPUT
        PWM_OUT
        GPIO_CLOCK
    );

    push @EXPORT_OK, @const;
    $EXPORT_TAGS{pinmode} = \@const;
}

use constant {
    PUD_UP => 1,
    PUD_DOWN => 0,
    PUD_OFF => 2,
};

{ # pull
    my @const = qw(
        PUD_UP
        PUD_DOWN
        PUD_OFF
    );

    push @EXPORT_OK, @const;
    $EXPORT_TAGS{pull} = \@const;
};

use constant {
    HIGH => 1,
    LOW => 0,
    ON => 1,
    OFF => 0,
};
       
{ # state

    my @const = qw(
        HIGH
        LOW
        ON
        OFF
    );

    push @EXPORT_OK, @const;
    $EXPORT_TAGS{state} = \@const;
}   

use constant {
    EDGE_SETUP => 0,
    EDGE_FALLING => 1,
    EDGE_RISING => 2,
    EDGE_BOTH   => 3,
};
       
{ # interrupt

    my @const = qw(
        EDGE_SETUP
        EDGE_FALLING
        EDGE_RISING
        EDGE_BOTH
    );

    push @EXPORT_OK, @const;
    $EXPORT_TAGS{edge} = \@const;
}   

sub _vim{1;};
1;
__END__

=head1 NAME

RPi::WiringPi::Constant - Constant variables for RPi::WiringPi

=head1 SYNOPSIS

    use RPi::WiringPi::Constant (:all);

    # or...

    use RPi::WiringPi::Constant (:pinmode);

    # etc

=head1 DESCRIPTION

This module optionally exports selections or all constant variables used within
the C<RPi::WiringPi> suite.

=head1 CONSTANT EXPORT TAGS

These are the individual grouping of export tags. The C<:all> tag includes all
of the below.

=head2 :pinmode

Pin modes.

    INPUT => 0,
    OUTPUT => 1,
    PWM_OUT => 2,
    GPIO_CLOCK => 3,

=head2 :pull

Internal pin pull up/down resistor state.

    PUD_DOWN => 0,
    PUD_UP  => 1,
    PUD_OFF => 2,

=head2 :state

    HIGH => 1,
    LOW => 0,
    ON => 1,
    OFF => 0,

=head2 :interrupt

Edge detection states for interrupts.

    EDGE_SETUP => 0,
    EDGE_FALLING => 1,
    EDGE_RISING => 2,
    EDGE_BOTH   => 3,
    
=head1 AUTHOR

Steve Bertrand, E<lt>steveb@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by Steve Bertrand

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.2 or,
at your option, any later version of Perl 5 you may have available.
