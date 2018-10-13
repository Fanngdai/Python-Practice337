# # Must use strict. Makes it local/private.
# use strict;
#
# my $apple_variety; # Value undefined
# $apple_variety = "Red Delicious"; # Defined
# $apple_vareity = "Granny Smith"; # Error

# Putting quotes around arrays will automatically place spaces
my @fruits = ("apples", "bananas", "cherries");
print @fruits;
print "\n";
print "@fruits";
print "\n";

print "$fruits[1]\n";         # bananas
# Amt of elements minus 1 aka. Last index
print "$#fruits\n";           # cherries
# So $fruits[$#fruits] will print the last element which is cherries
print "$fruits[$#fruits]\n";  # cherries
# Also print last element
print "$fruits[-1]\n";        # cherries
# $fruits[neg number] counts from the end. starting at -1
print "$fruits[-3]\n";        # apples

# Replacing an index is the same as java.
$fruits[3] = "orange";        # print the array. apples bananas cherries orange
print "@fruits\n";
$fruits[3] = "oranges";
print "@fruits\n";            # print the array. apples bananas cherries oranges

@zeroToTen = (0..10);         # .. means all the numbers including and between
print "@zeroToTen\n";         # 0 1 2 3 4 5 6 7 8 9 10

# These are the same
@veggies = ("radishes", "spinach", "carrot", "tomatos");
print "@veggies\n";
# qw automatically places quotes around each element. Making it a string
@veggies = qw(radishes spinach carrot tomatos);
print "@veggies\n";

# You can have arrays within arrays
@grocery_list = (@fruits, @veggies, "milk");
print "@grocery_list\n";      # apples bananas cherries oranges radishes spinach carrot tomatos milk

# Array Slicing. The 2nd and 4th index
my @yummy = @fruits[1,3];
print "@yummy\n";             # bananas oranges
my @berries = @fruits[2];
print "@berries\n";           # cherries
push @berries, "cranberries"; # insert cranberries to the last + 1 index
print "@berries\n";           # cherries cranberries
pop @berries;                 # remove the last element
print "@berries\n";           # cherries
delete @berries[0];           # deletes the first element in array
print "a @berries b\n";       # a  b

# foreach goes through all elements in array and do shit with it
# a bracket is a must!
foreach my $fruit (@fruits) {
  print "I like to eat $fruit!\n";
}
