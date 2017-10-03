#!/usr/bin/perl

use warnings;

print "Pick a number between 1 and 5:\n";
@array[1..5];
$num=<STDIN>;
chomp ($num);

if ($num <= 5) {
	print "That is within range.\n";
	print "$num\n";
}
elsif ($num >5) {
	print "Error.\n"
}

