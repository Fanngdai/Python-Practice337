# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 5 part 1 of Homework 2

# Write a regular expression that matches the following format: Month day, year
# (For example: "January 25, 2018" or "June 8, 1992", but not "June 54, 1992").
# The regular expression you wrote should capture month, day, and year
# information as separate groups. To keep things simple, you can assume there
# are 30 days in every month.

use strict;
use warnings;

my $string1 = "January 25, 2018";
my $string2 = "January 8, 1992";
my $string3 = "January 30, 0";

my $bad_str1 = "January 54, 1992";
my $bad_str2 = "January 31, 2018";
my $bad_str3 = "";

# contain the string 'very'
print "1" unless $string1 =~/(January|February|March|April|May|June|July|August|September|October|November|December) ([12]?[1-9]|30?), [\d]{1,4}/;
print "2" unless $string2 =~/(January|February|March|April|May|June|July|August|September|October|November|December) ([12]?[1-9]|30?), [\d]{1,4}/;

print "bad 1" if $bad_str1 =~/(January|February|March|April|May|June|July|August|September|October|November|December) ([12]?[1-9]|30?), [\d]{1,4}/;
print "bad 2" if $bad_str2 =~/(January|February|March|April|May|June|July|August|September|October|November|December) ([12]?[1-9]|30?), [\d]{1,4}/;

# Write a regular expression that matches a line in which every word is
# surrounded by spaces. An empty line always matches
$string1 = "";
$string2 = " word ";
$string3 = " word word ";
my $string4 = " word word word word ok ";

$bad_str1 = "word ";
$bad_str2 = " word";
$bad_str3 = "word";
my $bad_str4 = "!word";
my $bad_str5 = "\nword";
my $bad_str6 = " 123 ";

print "1" unless $string1 =~/^( [a-zA-Z ]* )?$/;
print "2" unless $string2 =~/^( [a-zA-Z ]* )?$/;
print "3" unless $string3 =~/^( [a-zA-Z ]* )?$/;
print "4" unless $string4 =~/^( [a-zA-Z ]* )?$/;

print "bad 1" if $bad_str1 =~/^( [a-zA-Z ]* )?$/;
print "bad 2" if $bad_str2 =~/^( [a-zA-Z ]* )?$/;
print "bad 3" if $bad_str3 =~/^( [a-zA-Z ]* )?$/;
print "bad 4" if $bad_str4 =~/^( [a-zA-Z ]* )?$/;
print "bad 5" if $bad_str5 =~/^( [a-zA-Z ]* )?$/;
print "bad 6" if $bad_str6 =~/^( [a-zA-Z ]* )?$/;
