# "This is my exception,
#  this is my time of the year"
package Throw::ThisIsMyException;
use Pony::Object qw/Pony::Object::Throwable/;

  sub null : Public
    {
      my $this = shift;
      return undef;
    }

1;