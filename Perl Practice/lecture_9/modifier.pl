use strict;
use warnings;

my $default = 9;

# $a DECLARED AND DEFINED
my $a=10;

# $b AND $c DECLARED BUT NOT DEFINED
my ($b, $c);

# USE OF UNLESS MODIFIER
$a = $default unless defined $a;   # $a intact at 10
$b = $default unless defined $b;   # $b = 9
$c = $default unless defined $c;   # $b = 9
# 10 9 9
print "$a $b $c\n\n";

my $balance = 2000;
my $deposit = 1000;
my $withdrawal = 800;

# AFTER RE_ORDERING, CAN SAVE TYPING OF BRACES.
# ALSO CAN OMIT THE PARENTHESES IN IF STATEMENT
# 0 = false. Since deposit != 0, it adds into balance
$balance += $deposit if $deposit;       # 3000

# PARANTHESES IN THE IF STATEMENT CAN BE OMITTED
$balance -= $withdrawal
   if $withdrawal and $withdrawal <= $balance;
print "balance is $balance\n";        # 1200
