# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 4 part 1 of Homework 2

# Write a program that writes a string "Perl is cool!" to a file as follows: ...

use strict;
use warnings;

# Writes to the original file
sub writeToOrg {
  my ($filename) = @_;
  open ORI,">$filename" or die "Cannot make/open $filename!\n";
  if(-w $filename) {
    print ORI "Perl is cool!";
    close ORI;
    print "Wrote to file $filename\n";
  } else {
    close ORI;
    die "The file $filename cannot be written.\n";
  }
}



# Writes to back-up subdirectory
sub writeToBackup {
  my ($filename, $print_value) = @_;
  my $backup_file = "backup/".$filename;
  open BACKUP_FILE,">$backup_file" or die "Cannot make/open $backup_file file!\n";
  if(-w $backup_file) {
    print BACKUP_FILE $print_value;
    close BACKUP_FILE;
    print "Ok, old file backed up under backup directory\n";
  } else {
    close BACKUP_FILE;
    die "The file $filename cannot be written.\n";
  }
}



# Reads the original file. Modifies line amount and returns string
sub readFile {
  my ($line_amt, $filename) = @_;
  my $read_value;
  open CFILE,"<$filename" or die "Cannot open $filename!\n";
  if (-r $filename){
    while (my $line =<CFILE>) {
      $line_amt = $.;
      $read_value.=$line if $. <= 10;
    }
    close CFILE;
  } else {
    close CFILE;
    die "The file $filename is not readable.\n";
  }
  $_[0] = $line_amt;
  chomp $read_value;
  return $read_value;
}



print "Enter file name:\n";
my $filename =<STDIN>;
chomp $filename;

if(-e $filename){
  print "$filename already exists. ";

  if(-d "backup") {
    print "Checking backup directory... already exists\n";
  } else {
    die "The directory backup cannot be created!\n" unless (mkdir "backup");
    print "Checking backup directory... backup directory created\n";
  }

  my $line_amt = 0;
  my $first10line;
  $first10line = readFile($line_amt, $filename);

  if($line_amt > 10) {
    print "randomFile.txt has more than 10 lines. What to do next?\n";
    print "Enter ’c’ to backup the first 10 lines, ’o’ to overwrite without creating a backup\n";

    my $option;
    do {
      $option =<STDIN>;
      chomp($option);
    } until($option =~/^[coCO]$/);

    if($option =~/^[cC]$/) {
      writeToBackup($filename, $first10line);
      writeToOrg $filename;
    } elsif ($option =~/^[oO]$/) {
      writeToOrg $filename;
    }

  } else {
    print "randomFile.txt has no more than 10 lines.\n";
    writeToBackup($filename, $first10line);
    writeToOrg $filename;
  }
} else {
  writeToOrg $filename;
}
