use strict;
use warnings;

my $string = "Did the fox jump over the dogs?";
print "1: $string\n" if $string =~ /dog/;
print "2: $string\n" if $string =~ m/dog/;
print "3: $string\n" if $string =~ m(dog);
print "4: $string\n" if $string =~ m|dog|;

$string = "Did the /fox jump over the dogs?";
print "5: $string\n" if $string =~ m[/];

$string = "print \'Did the \"fox\" jump over the dogs?\'\n";
print "6: $string\n" if $string !~ m[\\];

$string = "print 'Did the \"fox\" jump over the dogs?'\n";
print "7: $string\n" if $string !~ m[\\];
