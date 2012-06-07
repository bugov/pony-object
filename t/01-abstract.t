#!/usr/bin/env perl

use lib './lib';
use lib './t';

use strict;
use warnings;
use feature ':5.10';

use Test::More tests => 79;
use Pony::Object;

use Abstract::First;
use Abstract::Second;
use Abstract::Third;

    my $abs = eval { new Abstract::First };
    ok( !defined $abs, 'Raise error on trying to use abstract class' );
    
    my $c1 = new Abstract::Second;
    $c1->setA(12);
    ok( $c1->getA() == 12 );
    
    my $c2 = new Abstract::Third;
    ok( $c2->getA() == 11 );
    
    #=========
    #   END
    #=========
    
    diag( "Testing Pony::Object $Pony::Object::VERSION" );

