use strict;
use warnings;

########### sort and reverse
print "########### sort and reverse\n";

  # IN SCALAR CONTEXT, REVERSE() FIRST CONCATENATES THEN REVERSE CHARS
	# Note the scalar and not array. so. dogfishhorse and revert it.
	my $output = reverse ("dog", "fish", "horse");
	print "output is $output\n";						# esrohhsifgod

  # IN LIST CONTEXT, REVERSE THE LIST. SORT THE LIST FIRST
  my @animals = qw(dog cat fish parrot hamster);
  my @sorted = reverse sort @animals;
  print "I have the following pets: @sorted\n";

  # IN SCALER CONTEXT, REVERSE THE CHARACTERS
  my $word = "backwards";
  my $mirror = reverse $word;
  print qq("$word" reversed is "$mirror"\n);  # print qq() example

  # IN HASH CONTEXT, SWAP KEY and VALUE PER PAIR
  my %by_name = (cow   => "moooo",
                duck  => "quack",
                horse => "whinny",
                sheep => "baa",
    goat  => "baa",               # duplicate, can be lost after reverse
                hen   => "cluck",
                pig   => "oink");

  my %by_address = reverse %by_name;	    # Beware of lost duplicate values
  while (my ($key, $value) = each %by_address) {
      print "$key => $value\n";               # while loop/each print hash content
  }
	print "\n";


########### split and join
print "########### split and join\n";

        # JOIN() JOINS A NUMBER OF LISTS, WITH GIVEN DELIMITER
        @animals = qw(dog cat fish parrot hamster);
        my $string = join(" and a ", @animals);
        my $string2 = join(" ", @animals);
	my $string3 = join(" . ", "blue", "red", "darkblue");
        print "I have a $string.\n";
	print "I have another $string2\n";
        print "String3 is $string3\n";

        # SPLIT() SPLITS A STRING INTO A LIST OF SUBSTRINGS
        my $sentence = "The quick brown fox...";
        my @words = split(" ", $sentence);
	print "Words are @words\n\n";


########### grep
print "########### grep\n";

        # GREP FINDS MATCHING ITEMS IN A LIST, AND FILTERS
        my @juices = qw(apple cranapple orange grape apple-cider);
        my @apple  = grep (/apple/, @juices);
        my @apple1 = grep {/apple/} @juices;        # identical to the form above
        print "These juices contain apple: @apple\n";
        print "These juices contain apple: @apple1\n";

        # GREP USED FOR COMPARISON WITH EACH LIST ITEM, AND FILTERS
        my @primes = (2, 3, 5, 7, 11, 13, 17, 19);
        my @small1 = grep ($_ < 10, @primes);       # identical to the form below
        my @small  = grep {$_ < 10} @primes;        # $_ is each element of @primes
        print "The primes smaller than 10 are: @small\n";
        print "The primes smaller than 10 are: @small1\n\n";


########### map
print "########### map\n";

        # MAP APPLIES A FUNCTION TO EACH LIST ELEMENT TO MAKE A NEW LIST
        @primes = (2, 3, 5, 7, 11, 13, 17, 19);
        my @doubles  = map ($_ * 2, @primes);       # build a new list
        my @doubles1 = map {$_ * 2} @primes;        # identical to the form above
        print "The doubles of the primes are: @doubles\n";
        print "The doubles of the primes are: @doubles1\n";

        @small1 = map ($_ < 10 ? $_ : (), @primes); # identical to the form below
        @small  = map {$_ < 10 ? $_ : ()} @primes;  # grep {$_ < 10} @primes
        print "The primes smaller than 10 are: @small\n";
        print "The primes smaller than 10 are: @small1\n";
