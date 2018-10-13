# Concatenate?
$a=10;
$b="a";
$c=$a.$b;
print "$c\n";   # 10a

# Ignores letters?
$a=10;
$b="a";
$c=$a+$b;
print "$c\n";   # 10

$a=10;
$b="20a";
$c=$a+$b;
print "$c\n";  # 30
