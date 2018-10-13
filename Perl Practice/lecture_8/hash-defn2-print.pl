use strict;
use warnings;

# ANOTHER WAY TO INITIALIZE A HASH
my %dessert = ("pie", "apple", "cake", "carrot", "sorbet", "orange");

%dessert = (pie    => "apple",
            cake   => "carrot",
            sorbet => "orange"); # Same, but easier to read

# DEFINE ANOTHER HASH
my %ice_cream = (bowl => "chocolate", float => "root beer");

# DEFINE THE THIRD HASH WITH THE TWO ABOVE
my %choices = (%dessert, %ice_cream);

# PRINT CONTENT OF A HASH
print "Content of choices:\n", join(', ', %choices);

# PRINT CONTENT OF A HASH ITEM GIVEN THE KEY
print "\nI would like $choices{sorbet} sorbet.\n";
