#!/usr/local/bin/perl
#counts number of words in a file

#word-count.pl FILE

while (<>) {
    chomp;
    foreach $w (split) {
        $words++;
    }        
}         
          
print "$words words in this file\n";
