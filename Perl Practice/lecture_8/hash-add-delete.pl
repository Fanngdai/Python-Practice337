use strict;
use warnings;

# INITIALIZE A HASH
my %wheels = (unicycle => 1, bike => 2,  tricycle => 3);

# ADD TWO MORE HASH ITEMS
$wheels{car} = 4; # Creates a new key/value pair
$wheels{van} = 4; # Creates another new key/value pair

# A QUICK WAY TO SEE CONTENT OF A HASH
print "wheels content: ", join(', ', %wheels), "\n";

# REMOVE A HASH ITEM
delete $wheels{unicycle};

# PRINT ITS CONTENT AFTER DELETION
print "wheels content: ", join(', ', %wheels), "\n";
