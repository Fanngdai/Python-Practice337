# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 2 part 2 of Homework 2

# Write a subroutine that takes an integer parameter specifying the maximum
# width of each line, and reformat the given text to fit the given line width as
# much as possible. The program CANNOT break words using hypen.

use strict;
use warnings;

sub textFormatter {
  my ($filename, $char_lim) = @_;
  open INPUT, "<$filename" or die "Cannot open $filename!\n";

  if (-r $filename){
    my $string = "";
    while (my $line = <INPUT>) {
      $string = $string.$line
    }

    close INPUT;
    my @words = split(" ", $string);
    my $counter = 0;
    my $print_str = "";
    my $return_string = "FITTED TEXT:\n";

    while($#words >= 0){
      my $temp_str = shift @words;
      if(length($temp_str) > $char_lim){
        chop($print_str) if ($print_str ne "");
        $return_string .= $print_str."\n";
        $return_string .= $temp_str."\n";
        $counter = 0;
        $print_str = "";
      } elsif(length($temp_str) + $counter <= $char_lim) {
        $counter += length($temp_str) + 1;
        $print_str = $print_str.$temp_str." ";
      } else {
        # Remove the whitespace at the end
        chop($print_str);
        $return_string .= $print_str."\n";
        $print_str = $temp_str." ";
        $counter = length($temp_str)+1;
      }
    }

    if ($print_str ne "") {
      chop($print_str);
      $return_string .= $print_str."\n" ;
    }
    return $return_string;
  } else {
    close INPUT;
    die "The file $filename is not readable.\n";
  }
}

my $filename = "sample_input_q2.txt";
my $char_limit = 15;
print textFormatter($filename, $char_limit);
