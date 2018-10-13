use strict;
use warnings;

# STDOUT IS OPEN AUTOMATICALLY, POINTS TO THE SCREEN BY DEFAULT
print STDOUT "Hello, world.\n";  # STDOUT not needed


# STDERR IS OPEN AUTOMATICALLY, POINTS TO THE SCREEN BY DEFAULT
# We can instead let it point to a file, e.g., to errlogfile
open STDERR, ">> errlogfile" or die "Can't redirect errors to log: $!";
print STDERR "Oh no, here's an error message.\n";
warn "Oh no, here's another error message.\n";
close STDERR;


# STDIN IS OPEN AUTOMATICALLY, TAKE INPT FROM THE KEYBOARD  
# See "read-from-stdin-file" for examples. 

# We can also connect it to a file, e.g., to a given file 
open STDIN, "< stdinfile";
print while <STDIN> ;
close STDIN;

# Of course we don't need to use STDIN in this case, we can just
# use any file descriptor, e.g., CUSTOMERS, to read from a file
# Also see "read-from-stdin-file" for an example
