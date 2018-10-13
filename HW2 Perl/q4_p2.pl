# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 4 part 2 of Homework 2

# Write the program asking the user to input a string. Print the names and
# statuses (e: if exist, r: if readable, w: if writeable, x: if executable, T:
# if it is a text file) of all files in the current directory that contain the
# input string. If the substring appears multiple times in a file then, print
# the file name only once. There's no need to check in subdirectories.
# Print file once. @198

use strict;
use warnings;

print "What string do you want to search for?\n";
my $std =<STDIN>;
chomp $std;
my @files = glob(".* *");
my $line;

foreach my $file (@files) {
  open FILE,"<$file" or die "Cannot open: $file\n";
  if (-r $file){
    while ($line=<FILE>){
      if($line =~/$std/) {
        print qq{Found "$std" in file $file............};
        print "e" if (-e $file);
        # if word exist in file, it needs to be readable
        print "r";
        print "w" if (-w $file);
        print "x" if (-x $file);
        print "T" if (-T $file);
        print "\n";
        last;
      }
    }
    close FILE;
  } else {
    # skip file if not readable
    close FILE;
  }
}
