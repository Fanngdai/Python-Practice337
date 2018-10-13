sub ten { return wantarray() ? (1 .. 10) : 10; }

@ten = ten(); # (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
$ten = ten(); #10
# Get the first element which is 1
($ten) = ten(); #(1)
($one, $two) = ten(); # (1, 2)

sub factorial {
  # arguments are passed into the @_ array
  my ($n) = @_;
  return $n if $n <= 2;
  $n * factorial($n - 1);
}

sub add_one {             #Pass by value example
  my ($n) = @_;           # Copy first argument
  return($n+1);           #Return 1 more than argument in a list
}

sub plus_plus {         #Pass by reference example
  $_[0] = $_[0] + 1;
} # Modify first argument

my ($a, $b) = (10, 0);
# $a=10 $b=0
add_one($a); # Return value is lost, nothing changes $a still 10
$b = add_one($a); # $a: 10, $b: 11, scalar context takes last list element
plus_plus($a); # Return value lost, but a now is 11,$a is 11 now
$b = plus_plus($a); #$a and $b are both 12 now}}

print factorial 5; # parentheses not required
print "\n";
