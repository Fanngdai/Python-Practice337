use strict;
use warnings;

my $string="Did the fox jump over the dogs?";
print "1: $string\n" if $string =~ m/^[Yy]/;
print "2: $string\n" if $string =~ m/\?$/;
print "3: $string\n" if $string =~ m/the\b/;

# 2: Did the fox jump over the dogs?
# 3: Did the fox jump over the dogs?
