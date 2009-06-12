use Test::More  'no_plan';
use strict;
use warnings;

use lib 't/01-core';

use T2;
{
    my $t = T2->new;
    
    my $attr_names = $t->attr_names;
    is_deeply( [ sort @{ $attr_names } ], [ sort ( qw/m1 m2 m3/ ) ], 'attr_names' );
}
