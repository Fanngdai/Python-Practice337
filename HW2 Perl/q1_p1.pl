# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 1 part 1 of Homework 2

# Write a program tht prints out the usernames where the user id is an even
# number.

use strict;
use warnings;

my $filename = "passwd.txt";
open INPUT,"<$filename" or die "Cannot open $filename!\n";

if (-r $filename){
  # 0 = name, 2 = user
  while (my $line =<INPUT>){
    next if ($line eq "\n");
    my @fields = split(":", $line);     # Fields separated by colons
    die "The file $filename is not formatted correctly!" unless(exists $fields[0] && exists $fields[2]);
    print "$fields[0], $fields[2]\n" if $fields[2]%2==0
  }
  close INPUT;
} else {
  close INPUT;
  die "The file $filename is not readable.\n";
}
