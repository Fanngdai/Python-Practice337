# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 3 part 1 of Homework 2

# Write a program that takes a test file as an input (as a command line
# argument). The program should print out the total number of lines, words, and
# characters in the text file, and the content in the reverse order, both in
# terms of lines and in terms of characters in each and every line.

use strict;
use warnings;

my $filename = shift;
die "The file was not specified!" unless (defined $filename);
open INPUT,"<$filename" or die "Cannot open $filename!\n";

if (-r $filename){
  my $lines = 0;
  my $words = 0;
  my $chars = 0;
  my @reverse;

  while (my $line =<INPUT>) {
    chomp($line);
    push @reverse, (reverse $line)."\n";
    $chars += length($line);
    ++$words while $line =~ /\S+/g;
    $lines = $.;
  }
  close INPUT;
  print "lines: $lines, words: $words, characters: $chars\n";
  print "reversed:\n";
  print reverse @reverse;
} else {
  close INPUT;
  die "The file $filename is not readable.\n";
}
