my @juices = qw(apple cranapple orange grape apple-cider);
my @apple = grep(/apple/, @juices);
# apple cranapple apple-cider
print "These juices contain apple: @apple\n";

my @primes = (2, 3, 5, 7, 11, 13, 17, 19);
my @small = grep {$_<10} @primes;         # $_ is each element of @primes
# same
my @small = map {$_<10 ? $_ : ()} @primes;
# 2 3 5 7
print "The primes smaller than 10 are: @small\n";

my @doubles = map {$_ * 2} @primes;
# 4 6 10 14 22 26 34 38
print "The doubles of the primes are: @doubles\n";





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
