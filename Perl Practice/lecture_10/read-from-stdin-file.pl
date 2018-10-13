use strict;
use warnings;

########################## reading from stdin, i.e., the user input 
print "################### reading from stdin, the user input\n";

	print "What type of pet do you have? ";
        my $pet = <STDIN>;                       # Read a line from STDIN
        chomp $pet;                              # Remove newline

        print "Enter your pet's name: ";
        my $name = <>;                           # STDIN is optional
        chomp $name;

        print "Your pet $pet is named $name.\n";




########################## reading from a file  
print "################### reading from a file\n"; 

        open CUSTOMERS, "< mailing_list" or die "Can't open input file: $!";

	while (my $line = <CUSTOMERS>) {
            my @fields = split(":", $line);      # Fields separated by colons 
            print "$fields[1] $fields[0]\n";     # Display selected fields
            print "$fields[3], $fields[4]\n";
            print "$fields[5], $fields[6]  $fields[7]\n";
       	}


############################
        # KEEPS READING A FILE, ONE LINE AT A TIME
       	#print while <>;                          # no () needed in modifier 
        # This is the same as while (<>) {print;}         Here () is needed   
        # Keeps reading a line and printing it.  

       	#print STDOUT $_ while ($_ = <STDIN>);  # same, but more verbose
