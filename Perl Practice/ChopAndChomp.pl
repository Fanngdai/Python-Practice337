# Chop removes the last character of the string completely and returns
# the removed character
# Chomp only removes the last character if it is a newline character and
# returns the total number of characters removed from its argument

$str ="Look, it's a lion";
$a=chop($str);
print $a . "\t " . $str . "\n";

$str ="Look, it's a lion\n";
$a=chop($str);
print $a . "\t " . $str . "\n";

# The amt of /n removed.
$str ="Look, it's a lion";
$a=chomp($str);
print $a . "\t " . $str . "\n";

$str ="Look, it's a lion\n";
$a=chomp($str);
print $a . "\t " . $str . "\n";

# n	 Look, it's a lio
#                   This new line is from the 2nd example. Returns what it removes
# 	 Look, it's a lion
# 0	 Look, it's a lion
# 1	 Look, it's a lion
