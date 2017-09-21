#!/usr/bin/perl

use warnings;

print "Give me a number and I'll check if it is even:";
$num=<STDIN>;
chomp $num;

my $even = $num % 2 == 0;
my $odd  = $num % 2 == 1;

if (0 == $num % 2) {
	print "$num is even \n";

}else {
	print "$num is odd \nJust like you\n"; }

