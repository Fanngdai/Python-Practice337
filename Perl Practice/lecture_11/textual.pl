use strict;
use warnings;

my $string = "Did the fox jump over the dogs?";
print "1: $string\n" if $string =~ /dog/;
print "2: $string\n" if $string !~ /z/;
print "3: $string\n" if $string =~ /^[Yy]/;
print "4: $string\n" if $string =~ /\?$/;
print "5: $string\n" if $string =~ /^[a-zA-Z]*$/;
print "6: $string\n" if $string =~ /^\d*$/;

