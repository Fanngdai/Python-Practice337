use strict;
use warnings;

# DECLARING AND DEFINING A SUBROUTINE
sub ten {
    return wantarray() ? (1 .. 10) : 10;
}

# CALLING IN LIST CONTEXT
my @ten = ten();   # (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print "@ten\n";

# CALLING IN SCALAR CONTEXT
my $ten = ten();   # 10
print "$ten\n";

# CALLING IN LIST CONTEXT, BUT ONLY WITH ONE SCALAR ITEM
($ten) = ten();    # (1)
print "($ten)\n";
print "$ten\n";

# CALLING IN LIST CONTEXT, WITH TWO SCALAR ITEMS
my ($one, $two) = ten(); # (1, 2)
print "One is $one, Two is $two\n";
