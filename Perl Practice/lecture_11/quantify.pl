use strict;
use warnings;

my $string="Did the fox jump over the dogs?";
print "1: $string\n" if $string =~ m/z*/;
print "2: $string\n" if $string =~ m/z+/;
print "3: $string\n" if $string =~ m/\b\w{4}\b/;
print "4: $string\n" if $string =~ m/j?ump/;
print "5: $string\n" if $string =~ m/them?/;
