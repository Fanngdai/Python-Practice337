# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 1 part 4 of Homework 2

# Write a subroutine that adds a given user at the end of the list and save to
# 'passwd.txt' file. You need to assign an idle user id and an exisiting group
# id to the new user, meaning that no two users share the same user id. Please
# find the maximum user id in current list, increase it by 1 and use that to be
# the user id for the new user. Assign an existing group id randomly. You can
# specify other entries freely, e.g., user name, home directory, etc.

use strict;
use warnings;

sub addUser {
  my ($filename) = @_;
  my $user_name = "Zhibo Yang";
  my $password = '*';
  my $name = "New User";
  my $home_dir = '/home/';
  my $shell = '/bin/bash';
  my $user_id;
  my $group_id;
  my $last_char;

  open INPUT, "<$filename" or die "Cannot open $filename!\n";

  if (-r $filename && -w $filename){
    my @group_id_array;
    while (my $line =<INPUT>){
      next if ($line eq "\n");
      my @fields = split(":", $line);     # Fields separated by colons
      die "The file $filename is not formatted correctly!" unless(exists $fields[2] && exists $fields[3]);

      # If user id or group id is not a number
      die "Wrong File Format\n" if(!($fields[2] =~ /[+-]?\d+$/ || $fields[3] =~ /[+-]?\d+$/));

      # Make user_id the max
      if(defined $user_id) {
        if ($user_id < $fields[2]) {
          $user_id = $fields[2];
        }
      } else {
        $user_id = $fields[2]
      }

      # add in group_id into fields. No duplicates
      push @group_id_array, $fields[3] if (!(grep $_ == $fields[3], @group_id_array));
      $last_char = substr $line, -1;      # Get the last char
    }

    close INPUT;

    # The max user_id plus 1
    $user_id++;
    # Get a random group id
    $group_id = $group_id_array[rand @group_id_array];

    open LOG, ">> $filename" or die "Cannot open log file: $!\n";
    print LOG "\n" unless $last_char eq "\n";
    print LOG "$user_name:$password:$user_id:$group_id:$name:$home_dir:$shell";
    close LOG;

    my $return_string = "Add the following entry to file:\n";
    return $return_string."$user_name:$password:$user_id:$group_id:$name:$home_dir:$shell\n";
  } else {
    close INPUT;
    die "The file $filename is not readable.\n";
  }
}

my $filename = "passwd.txt";
print addUser $filename;
