package FormUser;
use Pony::Object 'Pony::View::Form';

    has action => '/user';
    has method => 'post';
    has id     => 'form-user';
    
    sub create
        {
            my $this = shift;
            
            $this->addElement
            (
                mail => text =>
                {
                    required => 1,
                    validators =>
                    {
                        Like => qr/[0-9a-zA-Z\.\-]+@[0-9a-zA-Z\.\-]+/
                    }
                }
            );
            
            $this->addElement( password => password => {required => 1} );
            $this->addElement( submit   => submit   => {ignore   => 1} );
        }

    1;