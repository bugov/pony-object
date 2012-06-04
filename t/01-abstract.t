#!/usr/bin/env perl

use lib './lib';
use lib './t';

use strict;
use warnings;
use feature ':5.10';

use Test::More tests => 79;
use Pony::Object;

use Abstract::Base;

    my $abs = new Abstract::Base;
    