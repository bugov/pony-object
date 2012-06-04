package Abstract::Base;
use Pony::Object 'abstract';

    protected a => undef;

    sub getA : Public
        {
            my $this = shift;
            return $this->a;
        }
    
    sub setA : Abstract {}

1;
