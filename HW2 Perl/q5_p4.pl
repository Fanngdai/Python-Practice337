# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 5 part 4 of Homework 2

# Complete the IP-matching regular expression we have seen in the class by
# capturing all edge cases listed below (For IPv4 only, and all IP blocks
# can be from 1 to 255 inclusive)
# Match IPv4 or IPv6? (((\d{3}.){3})((\d{3}.){2})?(\d{3}))

use strict;
use warnings;

my $string1 = "124.123.221.123";
my $string2 = "1.1.1.1";
my $string3 = "255.255.255.255";
my $string4 = "200.0.249.0";
my $string5 = "1.1.1.1";
my $string6 = "123.44.44.4";
my $string7 = "0.0.0.0";
my $string8 = "192.168.0.1";

my $bad_str1 = "01.000.000.000";
my $bad_str2 = "001.001.001.001";
my $bad_str3 = "256.255.255.255";
my $bad_str4 = "255.255.255";
my $bad_str5 = "255.255";
my $bad_str6 = "255";
my $bad_str7 = "255.255.255.";
my $bad_str8 = ".255.255.255";
my $bad_str9 = "";

# if it starts with 2, it must be followed 2 digit between 0-5
# if it starts with 1, it must be followed by 2 digits
print "1" unless $string1 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "2" unless $string2 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "3" unless $string3 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "4" unless $string4 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "5" unless $string5 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "6" unless $string6 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "7" unless $string7 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "8" unless $string8 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;

print "bad 1" if $bad_str1 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "bad 2" if $bad_str2 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;
print "bad 3" if $bad_str3 =~/^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$/;

# with paretheses
# ^(\(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\)\.){3}\(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\)$
# without parenthses
# ^(((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))\.){3}((25[0-5])|(2[0-4][0-9])|(1\d\d)|([1-9]?\d))$
