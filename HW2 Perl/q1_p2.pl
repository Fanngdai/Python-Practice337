# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 1 part 2 of Homework 2

# Print all usernames that are sorted by their user id decreasingly.

use strict;
use warnings;

my $filename = "passwd.txt";
open INPUT, "<$filename" or die "Cannot open $filename!\n";

if (-r $filename){
  # key = user id   value = name
  my %users;

  while (my $line =<INPUT>){
    next if ($line eq "\n");
    my @fields = split(":", $line);     # Fields separated by colons
    die "The file $filename is not formatted correctly!" unless(exists $fields[0] && exists $fields[2]);
    $users{$fields[2]} = $fields[0];
  }

  close INPUT;
  my @username;
  my @user_id;

  foreach my $user (sort { $b <=> $a } keys %users) {
    push @username, $users{$user};
    push @user_id, $user;
  }

  print "sorted uids: ";
  print join(' ', @user_id), "\n";
  print "usernames: ";
  print join(' ', @username), "\n";
} else {
  close INPUT;
  die "The file $filename is not readable.\n";
}
