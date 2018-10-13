# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 2 part 1 of Homework 2

# Write a subroutine to sort this price of text into increasing order of the
# length (number of total characters including whitespace) of each line. Ties
# can be ignored: Order between lines with the same length does not matter.

use strict;
use warnings;

sub sortText {
  my ($filename) = @_;
  open INPUT, "<$filename" or die "Cannot open $filename!\n";

  if (-r $filename){
    my %strings;

    while (my $line = <INPUT>){
      # Trim white spaces before and after the string
      $line =~ s/^\s+|\s+$//g;
      if (exists $strings{length($line)}) {
        $strings{length($line)} = $strings{length($line)}."\n".$line;
      } else {
        $strings{length($line)} = $line;
      }
    }
    close INPUT;

    my $return_string = "SORTED TEXT:\n";
    foreach my $line (sort {$a <=> $b} keys %strings) {
      chomp($strings{$line});
      $return_string .= $strings{$line}."\n";
    }
    return $return_string;
  } else {
    close INPUT;
    die "The file $filename is not readable.\n";
  }
}

my $filename = "sample.txt";
print sortText $filename;
