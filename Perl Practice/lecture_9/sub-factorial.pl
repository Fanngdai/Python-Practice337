use strict;
use warnings;

# CAN CALL A SUBROUTING BEFORE ITS DEFINITION.
# MUST USE PARENTHESES
print factorial(3). "\n";    # Parentheses required. & not required

# DEFINING THE SUBROUTINE
sub factorial {
    my ($n) = @_;
    return $n if $n <= 2;
    $n * factorial($n - 1);  # a subroutine returns the last expression
                             # evaluated by default
}

# CALLING AFTER SUBROUTINE IS DEFINED
print factorial 4;         # Parentheses omitted. & must be omitted
print "\n";                #

print factorial(5). "\n";  # regular way to call a subroutine
print &factorial(6). "\n"; # & not required

# 6
# 24
# 120
# 720
