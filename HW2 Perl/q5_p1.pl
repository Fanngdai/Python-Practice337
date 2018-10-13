# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 5 part 1 of Homework 2

# For each item below, write a regular expression that matches the strings on
# the left, while not matching the strings on the right. Note: The regular
# expression should match entire strings, not just the beginning/end of it.

use strict;
use warnings;

my $string1 = "very agile fluffy cat";
my $string2 = "very very agile fluffy cat";
my $string3 = "very very big cat";
my $string4 = "very very fluffy cat";
my $string5 = "very big cat";

my $bad_string1 = "cat";
my $bad_string2 = "agile cat";
my $bad_string3 = "fluffy";
my $bad_string4 = "agile fluffy cat";
my $bad_string5 = "agile big cat";

# Start with "very" and end with "cat"
print "1" unless $string1 =~ /^(very).*(cat)$/;
print "2" unless $string2 =~ /^(very).*(cat)$/;
print "3" unless $string3 =~ /^(very).*(cat)$/;
print "4" unless $string4 =~ /^(very).*(cat)$/;
print "5" unless $string5 =~ /^(very).*(cat)$/;

print "bad 1" if $bad_string1 =~ /^(very).*(cat)$/;
print "bad 2" if $bad_string2 =~ /^(very).*(cat)$/;
print "bad 3" if $bad_string3 =~ /^(very).*(cat)$/;
print "bad 4" if $bad_string4 =~ /^(very).*(cat)$/;
print "bad 5" if $bad_string5 =~ /^(very).*(cat)$/;

$string1 = "cat.";
$string2 = "dog?";
$string3 = "computer.";
$string4 = "world!";

$bad_string1 = "hello";
$bad_string2 = "world!!";
$bad_string3 = "hello!?";
$bad_string4 = "perl?!";

# Ends with exactly one weird char with a letter before it.
print "1" unless $string1 =~ /^[a-zA-Z]*\W$/;
print "2" unless $string2 =~ /^[a-zA-Z]*\W$/;
print "3" unless $string3 =~ /^[a-zA-Z]*\W$/;
print "4" unless $string4 =~ /^[a-zA-Z]*\W$/;

print "bad 1" if $bad_string1 =~ /^[a-zA-Z]*\W$/;
print "bad 2" if $bad_string2 =~ /^[a-zA-Z]*\W$/;
print "bad 3" if $bad_string3 =~ /^[a-zA-Z]*\W$/;
print "bad 4" if $bad_string4 =~ /^[a-zA-Z]*\W$/;
