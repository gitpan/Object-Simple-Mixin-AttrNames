package T2;
use Object::Simple(
    base => 'T1',
    mixin => 'Object::Simple::Mixin::AttrNames'
);

sub m3 : Attr { default => 'm3' }

Object::Simple->end;
