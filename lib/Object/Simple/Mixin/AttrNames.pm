package Object::Simple::Mixin::AttrNames;
use warnings;
use strict;

our $VERSION = '0.0204';

# get all attribute names
sub attr_names{
    my $invocant = shift;
    my $class = ref $invocant || $invocant;
    
    require Object::Simple;
    my $ac_opt = Object::Simple::Functions::merge_self_and_super_accessor_option( $class );
    return [ keys %{ $ac_opt } ];
}

=head1 NAME

Object::Simple::Mixin::AttrNames - Mixin class to get attribute names for Object::Simple

=head1 VERSION

Version 0.0204

=cut

=head1 SYNOPSIS
    
    ### Book.pm
    package Book;
    use Object::Simple(
        mixin => 'Object::Simple::Mixin::AttrNames'
    );
    
    sub title : Attr {}
    sub author : Attr {}
    
    Object::Simple->build_class;
    
    ### using Book.pm
    my $book = Book->new;
    my $attr_names = $book->attr_names; # return [ 'title', 'author' ]
    

=head1 EXPORT

Following method is exported

attr_names

=head1 FUNCTIONS

=head2 attr_names

get all attribute names

    my $attr_names = $book->attr_names;

=cut

=head1 AUTHOR

Yuki Kimoto, C<< <kimoto.yuki at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-object-simple-mixin-attrnames at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Object-Simple-Mixin-AttrNames>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Object::Simple::Mixin::AttrNames


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Object-Simple-Mixin-AttrNames>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Object-Simple-Mixin-AttrNames>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Object-Simple-Mixin-AttrNames>

=item * Search CPAN

L<http://search.cpan.org/dist/Object-Simple-Mixin-AttrNames/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Yuki Kimoto, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Object::Simple::Mixin::AttrNames
