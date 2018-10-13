while (<>) {
    foreach $wd (split) {
        if ($wd =~ /ly$/i) {
            print "  $wd\n";
            $var++;
        }
    }
}

print "$var words that end in -ly\n";
