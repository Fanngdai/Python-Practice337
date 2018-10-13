use strict;
use warnings;

# INITIALIZE A HASH
my %wheels = (unicycle => 1, bike => 2,
              tricycle => 3, car => 4, semi => 18);

# INDEXING A HASH ITEM
print "A bicycle has $wheels{bike} wheels.\n";

# MODIFYING A HASH ITEM
$wheels{bike} = 4; # Adds training wheels

print "A bicycle with training wheels has $wheels{bike} wheels.\n";
