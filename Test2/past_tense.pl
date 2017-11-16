#!/usr/bin/perl

use warnings;
#reading from a file
open INFO, '<', 'sentences.txt'||die;
	$sentences = <INFO>;
#always close FILEHANDLE 
close INFO;
	print "$sentences\n";
#removing carriage return and replacing all "ing" with "ed"
	$sentences =~ s/\r//;
	$sentences =~ s/ing/ed/g;
#the output doesnt make sense
#***************************************instructions on moodle dont say anything about changing it within the file so I just printed the changes***********************************
print $sentences;

