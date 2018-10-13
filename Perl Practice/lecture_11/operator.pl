my $string = "Did the fox jump over the dogs?";
#$string =~ s/dog/cat/;              # substitute "cat" for "dog"
#$string =~ s/donkey/cat/;              # substitute "cat" for "dog"
#$string =~ s(fox)(kangaroo);        # substitute "kangaroo" for "fox"

#$string =~ s[fox][kangaroo];        # substitute "kangaroo" for "fox"
$string =~ s|fox|kangaroo|;        # substitute "kangaroo" for "fox"
print "$string\n";

$string =~ tr/a-z/n-za-m/;          
print "$string\n";
