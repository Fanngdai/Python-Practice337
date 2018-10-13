use strict;
use warnings;

my $string = "Did the fox jump over the dogs?";
print "1: $string\n" if $string =~ m/(fox){2}/;     # "foxfox"

# To match 'the\s' followed by zero or more characters, then 'the\s' again
print "2: $string\n" if $string =~ m/(the\s).*\1/;  # matches

# $1 means the first match, $2 means the second match
print "3: $1\n" if $string =~ m/(\b\w+\b)(.*)\1/;     # 'the'
print "4: $2\n" if $string =~ m/(\b\w+\b)(.*)\1/;   # the string between
