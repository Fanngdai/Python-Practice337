# declare
my @fruits = qw(apples bananas cherries oranges);
# get the 2nd and 4th index
my @yummy = @fruits[1,3];     # bananas oranges
print "My favorite fruits are: @yummy\n";     # bananas oranges
my @berries = @fruits[2];     # cherries
push @berries, "cranberries"; # cherries cranberries
print "These fruits are berries: @berries\n"; # cherries cranberries
