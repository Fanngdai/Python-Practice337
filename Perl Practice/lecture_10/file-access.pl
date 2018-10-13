# make sure you have the following files in your directory
# in order for this code to run:
#   datafile.txt
#   myfile

use strict;
use warnings;

# OPEN A FILE FOR READING. THE FILE NAME IS HARD-CODED
# THE FILE MUST EXIST
open INPUT,  "<  datafile.txt" or die "Can't open input file: $!";
my $a = <INPUT>;       # diamond <> reads one line from the file
print $a;              # print the first line

# <> returns false at the end of file
while ($a = <INPUT>) { # continue reading the rest, one line at a time
   print $a;
}

# WRITING TO A FILE. FILE NAME IS HARD-CODED
# CREATE IT IF NOT EXISTENT. OVERWRITE IT IF EXISTENT
open OUTPUT, ">  outfile" or die "Can't open output file: $!";
foreach (1..10) {
  print OUTPUT "This is $_\n";   # no comma after OUTPUT
}


# APPENDING TO A FILE. CREATE IT IF NOT EXISTENT
open LOG,    ">> logfile" or die "Can't open log file: $!";
foreach my $i (reverse 1..3) {
  print LOG "Here is a new event $i\n";
}


# OPEN A FILE FOR READ AND WRITE. THE FILE MUST EXIST
# WRITING WILL APPEND TO THE CURRENT CONTENT
open RWFILE, "+< myfile" or die "Can't open file: $!";
while ($a = <RWFILE>) { # reading the content first
   print $a;
}

foreach my $i (reverse 1..4) {
  print RWFILE "Add new data $i\n";
}

close INPUT;
close OUTPUT;
close LOG;
close RWFILE;
