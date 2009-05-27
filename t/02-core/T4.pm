package T4;
use Object::Simple(
    base => 'T1',
);
use Object::Simple::Mixin::AttrNames qw/attr_names/;

sub m3 : Attr { default => 'm3' }

Object::Simple->end;
