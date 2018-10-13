# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 1 part 3 of Homework 2

# Print the number of users in each group

use strict;
use warnings;

my $filename = "passwd.txt";
open INPUT, "<$filename" or die "Cannot open $filename!\n";

if (-r $filename){
  my %users;

  while (my $line =<INPUT>){
    next if ($line eq "\n");
    my @fields = split(":", $line);     # Fields separated by colons
    die "The file $filename is not formatted correctly!" unless(exists $fields[3]);

    if (exists $users{$fields[3]}) {
      $users{$fields[3]} = $users{$fields[3]} + 1
    } else {
      $users{$fields[3]} = 1;
    }
  }

  close INPUT;
  foreach (keys %users){
    print "group $_ has $users{$_} users\n";
  }
} else {
  close INPUT;
  die "The file $filename is not readable.\n";
}
