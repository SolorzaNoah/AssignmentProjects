#!/usr/bin/perl

use warnings;

print "Pick a number from 1 through 5 and I shall give you the color assigned to it\n";
	
	for (my $i=0; $i<1; $i++){
	$num=<STDIN>;
    $array[$i] = $num;
	chomp @array[$i]; 
	}
	if ($array[$i] > 5){
		print "Error";}
	if ($array[$i] < 5){
		print "$array[$i]";
}
