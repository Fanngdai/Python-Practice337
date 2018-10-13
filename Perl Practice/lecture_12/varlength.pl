#!/usr/local/bin/perl
#counts number of N-letter words in a file, where N is supplied by user

#varlength.pl N FILE

$num = $ARGV[0];
$file = $ARGV[1];

open(FILE,$file);

while (<FILE>) {
    chomp;
    tr/;:,.!?-//d;
    foreach $w (split) {
     if (length($w) == $num) {
         print "$w\n";
            $score++;
        }
    }        
}         

print "\n$score $num-letter words in $file\n";
