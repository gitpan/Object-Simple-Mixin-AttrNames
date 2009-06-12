package T2;
use Object::Simple(
    base => 'T1',
    mixins => ['Object::Simple::Mixin::AttrNames']
);

sub m3 : Attr { default => 'm3' }

Object::Simple->build_class;
