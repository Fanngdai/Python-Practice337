# Note the scalar and not array
my $output = reverse ("dog", "fish", "horse");  # esrohhsifgod
# dog cat fish parrot hamster
my @animals = qw(dog cat fish parrot hamster);
my @sorted = reverse sort @animals;

# parrot hamster fish dog cat
print "I have the following pets: @sorted\n";
my $word = "backwards";
my $mirror = reverse $word;
print qq("$word" reversed is "$mirror"\n);
%by_address = reverse %by_name;
