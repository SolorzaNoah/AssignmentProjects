#!/usr/bin/perl

use warnings;

#user input
print "Pick a number traveller!\n";
chomp($num=<STDIN>);

#for ease I set variables
my $even = $num % 2 == 0;
my $odd  = $num % 2 == 1;

#my conditional to make 2 outputs,one for odd and even each
if (0 == $num % 2) {
	print "Let\'s call it even\n";

}else {
	print "How odd\n"; }