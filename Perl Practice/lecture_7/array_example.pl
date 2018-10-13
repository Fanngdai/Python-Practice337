my @fruits; # Undefined
@fruits = qw(apples bananas cherries); # Assigned
# Lengthen. Add in "dates" kinda like push
@fruits = (@fruits, "dates");
print "@fruits\n";
# Empty
@fruits = ();

# unshift adds in the element
unshift @fruits, "acorn";
print "@fruits\n";

# shift removes the first element stores in nuts.
my $nut = shift @fruits;
print "Well, a squirrel would think an $nut was a fruit.\n";
print "The fruits array has elements @fruits\n";    # Array is empty

push @fruits, "mango"; # Add an item to the end my
$food = pop @fruits; # Remove from the end
print "My, that was a yummy $food!\n";

# Shift and unshift modifies the elements from the beginning of the array
# push and pop modifies the elements at the end of the array
