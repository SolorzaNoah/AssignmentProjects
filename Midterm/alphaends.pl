#!/usr/bin/perl

use warnings;

#prompt for user input
print "Pick a letter traveller! Remember, no uppercase letters or numbers.\n";
#defining input w/ a chomp
chomp($alpha=<STDIN>);

if ($alpha eq "a" || $alpha eq "z") {
	print "You are at an end of the alphabet\n";
}

#could not set 2 conditions in previous for loop so simply making another

#nvm I got it

else {
	print "You are stuck in the middle of the alphabet\n";
}
