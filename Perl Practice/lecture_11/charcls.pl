use strict;
use warnings;

my $string="did the fox jump over the dogs?";
print "1: $string\n" if $string =~ m/[bdl]og/;
print "2: $string\n" if $string =~ m/dog[^s]/;
print "3: $string\n" if $string =~ m/\s\w\w\wp\s/;
print "4: $string\n" if $string =~ m/dog[^z]/;
