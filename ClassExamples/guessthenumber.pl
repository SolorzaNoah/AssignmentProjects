#!/usr/bin/perl

#Variable Declaration
$continue_game = 1;
$guess;

#Loop to play the game multiple times
while ($continue_game == 1){

	#Random Number Generation
	$random_number = int(rand(10)) + 1;
	print "I am thinking of a number between 1 and 10, what is it? ";
	$guess = <STDIN>;

	#Check to see if the user got it right
	if ($guess == $random_number) {

		print "You're right!\n";

	} else {

		print "Nope, wrong!\n\n";

	}

	print "\nType 1 if you want to try guessing another number.  ";
		$continue_game = <STDIN>;

}
