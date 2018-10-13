use strict;
use warnings;

################################################ references
print "######################################### references\n";

	# CREATING A REFERENCE TO A LIST
	my @fruit = qw(apple banana cherry);
	my $fruitref = \@fruit;

	# DEREFERENCING A LIST POINTER TO A LIST
  # I have these fruits: apple banana cherry.
	print "I have these fruits: @$fruitref.\n";

	# DEREFERENCING A LIST POINTER TO GET A LIST ITEM
  # I want a banana.
	print "I want a $fruitref->[1].\n\n";

################################################ anonymous data
print "######################################### anonymous data\n";

	# BUILD AN ANONYMOUS (UNNAMED) ARRAY WITH []
	my $myfruits = ["pear", "watermelon", "oranges"];

	# BUILD AN ANONYMOUS (UNNAMED) HASH WITH {}
	my $mywheels = {unicycle => 1,
        	        bike     => 2,
      	        	tricycle => 3,
      	        	car      => 4,
      	        	semi     => 18};

	# DEREFERENCING THEM THE SAME WAY AS FOR NAMED ARRAYS
  # Fruits that I like are pear watermelon oranges.
	print "Fruits that I like are @$myfruits.\n";
  # I like oranges.
	print "I like $myfruits->[2].\n";
  # A car has 4 wheels.
	print "A car has $mywheels->{car} wheels.\n\n";

################################################ hierarchical data
print "######################################### hierarchical data\n";

  # BUILD THREE ANONYMOUS ARRAYS
  my $fruits  = ["apple", "bananas", "cherries"];
  my $veggies = ["spinach", "turnips"];
  my $grains  = ["rice", "corn"];

  # BUILD A LIST OF ARRAY REFERENCES
  my @shopping_list = ($fruits, $veggies, $grains);

  # DEREFERNCING TO OBTAIN ARRAY ELEMENTS
  # I should remember to get corn.
  print "I should remember to get $shopping_list[2]->[1].\n";
  # I should remember to get cherries.
  print "I should remember to get $shopping_list[0][2].\n\n";
