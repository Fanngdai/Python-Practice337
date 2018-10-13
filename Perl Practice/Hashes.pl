my %numbers = (zero => 0, one => 1, two => 2, three => 3, four => 4);
# Randomly stored. will print key with value
print %numbers;
print "\n";
print "%numbers\n";     # Does not print the hash
# one, 1, three, 3, two, 2, zero, 0, four, 4
print join(', ', %numbers), "\n"; # Must use join

# To access the value
print $numbers{zero};       # prints 0
print "\n";
print "$numbers{zero}\n";   # prints 0

# Ways to declare hash
my %dessert = ("pie", "apple", "cake", "carrot", "sorbet", "orange");
# same as
%dessert = (pie => "apple", cake => "carrot", sorbet => "orange");
# same as
%dessert = qw(pie apple cake carrot sorbet orange);

print "$dessert{pie}\n";
print "$dessert{cake}\n";
print "$dessert{sorbet}\n";

# If key is not found. Nothing is printed. No error
print "$dessert{abc}\n";

my %ice_cream = (bowl => "chocolate", float => "root beer");
# kinda just combines both hash into one
my %choices = (%dessert, %ice_cream);
print "$choices{sorbet}\n";  # orange
print "$choices{bowl}\n";  # orange

delete $ice_cream{bowl};      # Deletes this option

my %sounds=(cow => "moooo", duck => "quack", horse => "whinny", sheep => "baa", hen =>"cluck", pig =>"oink");
# put whinny cluck oink into barnyard_sounds. horse is the key.
# NOTE THE @ IN FRONT OF sounds
my @barnyard_sounds = @sounds{"horse", "hen", "pig"};
# whinny cluck oink
print "I heard the following in the barnyard: @barnyard_sounds\n";
