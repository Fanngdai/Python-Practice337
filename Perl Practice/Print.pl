print "1. ''\n";
print '2. \'\'\n';
print '3. \n';
print "4. \'\'\n";
print "5. \\\n";

# 1. ''
# 2. ''\n3. \n4. ''
# 5. \
#

# ' '
#     Does not print \n as new line
#     Does not print scalars.
#     Prints double quotes
#
# " "
#     Prints the values of scalars
#     Prints single quotes

$first= q<That's how you make a single quote>;
$second= qq{I said, "This is how you make a double quote"};
print $first;
print "\n\n";
print $second;
print "\n\n";

# That's how you make a single quote
#
# I said, "This is how you make a double quote"
#
