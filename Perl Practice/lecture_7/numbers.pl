# Accept a number from the user print "maximum: ";
# $maximum = <STDIN>;
$maximum = 5;
# Make an array of numbers
@numbers = (2..$maximum);
# Iterate through that array
while ($prime = shift @numbers) {
  print "$prime\n"; # Print the next prime
  # Remove multiples of that prime
  @numbers = grep {$_ % $prime} @numbers;
}
