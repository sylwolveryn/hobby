use strict;
use warnings; 


my $newsWithUnderline = "news_000";
my $newsCounterToCreate = 41;

# Use the open() function to create the file.

for (my $i=1; $i <= $newsCounterToCreate; $i++) {

	unless(open FILE, '>'.$newsWithUnderline.$i.'php') {
		# Die with error message 
		# if we can't open it.
		die "\nUnable to create $file\n";
	}   
}

# Write some text to the file.

#print FILE "<h2>\n";
#print FILE "</h2>?\n";

# close the file.
close FILE;