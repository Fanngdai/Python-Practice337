#!/usr/local/bin/perl
#counts number of instances of 'the' in a file

#the-counter.pl FILE

while (<>) {
    chomp;
    tr/;:,.!?-//;
    foreach $w (split) {
     if ($w eq 'the') {
         print "$.\n";
            $score++;
        }
    }        
}         
          
print "\n'the' occurs $score times\n";

 
