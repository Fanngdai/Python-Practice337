use strict;
use warnings;

my $string = "Did the fox jump over the dogs?";
# contain the string 'dog'
print "1: $string\n" if $string =~/dog/;            # TRUE
# Does not contain the string/char 'z'
print "2: $string\n" if $string !~/z/;              # TRUE
# Begins with the char 'y' OR 'Y'
print "3: $string\n" if $string =~/^[Yy]/;          # FALSE
# Ends with the char '?'
print "4: $string\n" if $string =~/\?$/;            # TRUE
# Contains only letters
print "5: $string\n" if $string =~/^[a-zA-Z]*$/;    # FALSE
# Contains only digits
print "6: $string\n" if $string =~/^\d*$/;          # FALSE


print "7: $string\n" if $string =~ m/dog/;          # TRUE
print "8: $string\n" if $string =~ m(dog);          # TRUE
print "9: $string\n" if $string =~ m|dog|;          # TRUE

$string = "Did the /fox jump over the dogs?";
print "10: $string\n" if $string =~ m[/];           # TRUE

$string = "print \'Did the \"fox\" jump over the dogs?\'\n";
print "11: $string\n" if $string !~ m[\\];          # TRUE

$string = "print 'Did the \"fox\" jump over the dogs?'\n";
print "12: $string\n" if $string !~ m[\\];          # TRUE

# /d and /D for digits
# /w and /W for word (letters, digits, underscore) and non-white chars
# /s and /S for white-space (space, tab, new line)
# . for any single char except newline

my $string="did the fox jump over the dogs?";
# Must start with 'b' or 'd' or 'l'
print "13: $string\n" if $string =~ m/[bdl]og/;     # TRUE
# "dog" cannot be followed by 's'
print "14: $string\n" if $string =~ m/dog[^s]/;     # FALSE
# Must start & end with a '0'
print "15: $string\n" if $string =~ m/\s\w\w\wp\s/; # TRUE
# "dog" cannot be followed by z
print "16: $string\n" if $string =~ m/dog[^z]/;     # TRUE

# Boundary means separated by non-words.
# This example below means it must have a "break" after
# "break" = \n space \0 etc,

#
print "17: $string\n" if $string =~ m/^[Yy]/;       # FALSE
# ends with ? -> you have \? bc syntax
print "18: $string\n" if $string =~ m/\?$/;         # TRUE
#
print "19: $string\n" if $string =~ m/the\b/;       # TRUE

# * matches the preceding item 0 or more times
# + matches the preceding item 1 ot more times
# ? matches the preceding item 0 or once
# {4} matches exactly 4 times
# {3,6} matches 3-6 times

print "20: $string\n" if $string =~ m/z*/;          # TRUE
print "21: $string\n" if $string =~ m/z+/;          # FALSE
print "22: $string\n" if $string =~ m/\b\w{4}\b/;   # TRUE
print "23: $string\n" if $string =~ m/j?ump/;       # TRUE

# Groups

# "foxfox"
print "24: $string\n" if $string =~ m/(fox){2}/;
# To match 'the\s' followed by zero or more characters, then 'the\s' again
print "25: $string\n" if $string =~ m/(the\s).*\1/; # TRUE
# $1 means the first match, $2 means the second match
print "26: $1\n" if $string =~ m/(\b\w+\b)(.*)\1/;   # 'the'
print "27: $2\n" if $string =~ m/(\b\w+\b)(.*)\1/;   # the string between





my $string = "Did the fox jump over the dogs?";
#$string =~ s/dog/cat/;              # substitute "cat" for "dog"
#$string =~ s/donkey/cat/;              # substitute "cat" for "dog"
#$string =~ s(fox)(kangaroo);        # substitute "kangaroo" for "fox"

#$string =~ s[fox][kangaroo];        # substitute "kangaroo" for "fox"
$string =~ s|fox|kangaroo|;        # substitute "kangaroo" for "fox"
print "$string\n";

$string =~ tr/a-z/n-za-m/;
print "$string\n";





my $paragraph = "First line\nSecond Line\nThird Line\n";
print "\n$paragraph";

print "0:$1\n" if ($paragraph =~ /(Third)/);
print "1:$1\n" if ($paragraph =~ /(\b\w+\b).*\1/);
print "2:$1\n" if ($paragraph =~ /(\b\w+\b).*\1/s);
print "3:$1\n" if ($paragraph =~ /(\b\w+\b).*\1.*\1/s);

# cat     Must be in this order
# c.t     Find a 'c' followed by any single char except newline followed by t
# c\.t    c followed by dot, followed by t
# c\\t    c followed by backslash followed by t
# c[.]t or c[\.]t same as c/.t

# order and repetitions are not important
#     [aabbbccc] is the same as [cba]
#     order does not matter
# c[aeiou]t c followed by a vowel followed by t
# [0123456789] same as \d or [0-9]
# \[a\] find a left square bracket followed by an 'a' followed by a right
# square bracket

# [A-Z]         find an upper-case letters
# A-Z           Must be in this order an "A-Z"
# [0-9.,]       find a digit or a full stop or a comma
# [0-9a-fA-F]   find a hexadecimal digits
# [a-zA-Z0-9\-] find an alphanumeric char or a hyphen
# [1-31]        find a 1 or 2 or a 3
# [^a]          find any char other than an a
# a{1}          find an a
# a{3}          3 consequtive a's
# [abc]{2}      abc in any order.

# cat|dog        cat or dog
# a|b|c           equivalent to [abc]
