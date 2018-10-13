my @animals = qw(dog cat fish parrot hamster);
my $string = join(" and a ", @animals);
# I have a dog and a cat and a fish and a parrot and a hamster.
print "I have a $string.\n";

my $sentence = "The quick brown fox...";
# Makes into array
my @words = split(" ", $sentence);
