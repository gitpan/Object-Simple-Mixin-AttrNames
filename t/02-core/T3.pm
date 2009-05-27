package T3;
use Object::Simple(
    base => 'T1',
);
use Object::Simple::Mixin::AttrNames;

sub m3 : Attr { default => 'm3' }

Object::Simple->end;
