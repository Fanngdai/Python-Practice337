my $string = "My favorite number is 123";
print "0 $1 $string\n" if $string =~ m/(NUM)/i;
print "1 $1 $string\n" if $string =~ m/([0-9])/;
print "2 $1 $string\n" if $string =~ m/([012345678])/;
print "3 $3 $1 $2$ string\n" if $string =~ m/(\d)(\d)(\d)/;

# 0 num My favorite number is 123
# 1 1 My favorite number is 123
# 2 1 My favorite number is 123
# 3 3 1 2My favorite number is 123
