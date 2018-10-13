use strict;
use warnings;

my $paragraph = "First line\nSecond Line\nThird Line\n";
print "\n$paragraph";

print "0:$1\n" if ($paragraph =~ /(Third)/);
print "1:$1\n" if ($paragraph =~ /(\b\w+\b).*\1/);
print "2:$1\n" if ($paragraph =~ /(\b\w+\b).*\1/s);
print "3:$1\n" if ($paragraph =~ /(\b\w+\b).*\1.*\1/s);
