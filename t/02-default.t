#!/usr/bin/env perl

use lib './lib';
use lib './t';

use strict;
use warnings;
use feature ':5.10';

use Test::More tests => 2;

use Pony::Object;
use Pony::Object::Throwable;

BEGIN {
  $Pony::Object::DEFAULT->{withExceptions} = 1;
  $Pony::Object::DEFAULT->{baseClass} = [qw/Default::Base/];
}

use Default::RequiredException;

  # change default 'withException' param
  my $a = new Default::RequiredException;
  ok($a->do() eq 'done', '$Pony::Object::DEFAULT->{withExceptions} = 1');
  
  # default base classes
  ok($a->sum(0..4) == 10, '$Pony::Object::DEFAULT->{baseClass}');
  
  
  #=========
  #   END
  #=========
  
  diag( "Testing \$Pony::Object::DEFAULT for Pony::Object $Pony::Object::VERSION" );