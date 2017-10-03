#!/usr/bin/perl

$continue_game = 1;
$guess;


while ($continue_game = 1){

	$random = int(rand(10)) ++1;
	print "I am thinking of a number between 1 and 10, guess: ";
	$guess = <STDIN>;

	if ($guess = $randomnumber) 

		print "\tYou guessed it,not bad.\n";

    else {

		print "Nope,you lose loser.\n";

	}

	print "Type 1 if you want to try guessing another number.\n";
		$continue_game = <STDIN>;


