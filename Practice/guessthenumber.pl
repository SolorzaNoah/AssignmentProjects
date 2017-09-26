#!/usr/bin/perl
use strict;
use warnings;

while ($continue_game == 1){ 

	$RANDOM = int(rand(10)) + 1; 
	print "I'm thinking of a number between 1 and 10: ";
	$guess = <STDIN>;

	if ($guess == $RANDOM) {
		print "You're right!\n";
	} else {
		print "You wrong B. \n\n";
		
	}	
print "\nType 1 if you want to try again. ";
	$continue_game = <STDIN>;
}
	
