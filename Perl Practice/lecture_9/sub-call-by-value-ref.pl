use strict;
use warnings;

# ARGUMENTS ARE IN AN ARRAY CALLED @_
# FOR PASSING BY VALUE, COPY IT TO LOCAL VARIABLES
sub add_one {           # Like pass by value
    my ($n) = @_;       # Copy first argument. Must have brackets
    return ($n + 1);    # Return argument+1. Brackets optional
}

# FOR PASSING BY REFERENCES, NO NEED TO COPY TO LOCAL VARS
sub plus_plus {         # Like pass by reference
    $_[0] = $_[0] + 1;  # Modify first argument
}                       # No return statement

my ($a, $b) = (10, 0);

add_one($a);            # Return value is lost, nothing changes
$b = add_one($a);       # $a stays at 10, $b is 11
print "b is $b\n";

plus_plus($a);          # $a now is 11
$b = plus_plus($a);     # Both $a and $b are 12
print "a is now $a, b is now $b\n";
