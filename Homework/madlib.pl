#!/usr/bin/perl

use warnings;

$again = Y;
while (lc($again) eq 'y') {
	print "Hi, you ready to make a story? Im gonna need some help, start by giving me a random word: ";

	$randomword=<STDIN>;
	chomp $randomword;

	print " Now give me a name:";

	$name1=<STDIN>;
	chomp $name1;
	
	print "Now give me 4 verbs:";
	
	$verb1=<STDIN>;
	chomp $verb1;
	$verb2=<STDIN>;
	chomp $verb2;
	$verb3=<STDIN>;
	chomp $verb3;
	$verb4=<STDIN>;
	chomp $verb4;
	
	print "Name a celebrity:";
	
	$celebrity=<STDIN>;
	chomp $celebrity;
	
	print "Name a song:";
	
	$songname=<STDIN>;
	
	print "Almost done, name a body part:";
	
	$bodypart=<STDIN>;
	chomp $bodypart;
	
	print "\n The other day,$name1 took me to the park to $verb4 and $verb3 , but I said no because I am vegan. I played my favorite song $songname to set the scene but my $bodypart was itchy so I decided to $verb2 with $celebrity who happened to be passing by. $name1 began to $verb1 so we ate a $randomword.\n" ;
	
	print "\nWould you like to play AGAIN? (Y/N)";
	$again = <STDIN>;
}

