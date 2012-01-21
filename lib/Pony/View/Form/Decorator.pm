package Pony::View::Form::Decorator;
use Pony::Object;
    
    # Default decorator.
    # Experimental.
    
    use Pony::View::Form::Translate;
    
    has form    => qq{<table class="pony-form">\n\%s\n</table>};
    has element => qq{<tr>\n<td>\%s</td>\n<td>\%s\n\%s</td>\n<td>\%s</td>\n</tr>};
    
    # "She's dead, wrapped in plastic."
    
    sub decorate
        {
            my ( $this, $formStr, @elements ) = @_;
            my $htmlCode = '';
            my $t = new Pony::View::Form::Translate;
            
            # Wrap all elements into decorators
            # and join them.
            
            for my $e ( @elements )
            {
                $htmlCode .= sprintf $this->element, $t->t( $e->{label} ),
                                     @$e{ qw/value error require/ };
            }
            
            # Wrap elements into form.
            # Wrap form into from decorator.
            
            $htmlCode = sprintf $this->form, $htmlCode;
            $htmlCode = sprintf $formStr, $htmlCode;
            
            return $htmlCode;
        }
1;

__END__

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011, Georgy Bazhukov.

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=cut
