#!/usr/bin/perl

use warnings;

print "Give me a number, and I shall determine something, mwahaha!\n";
$num=<STDIN>;
chomp $num;

my $fizzbuzz = $num == 0;
	if ( 0 == $num % 15) {
	print "FizzBuzz\n";
	exit 
}
my $fizz = $num == 0;
	if ( 0 == $num % 3) {
	print "Fizz\n";
}
my $buzz = $num == 0;
	if ( 0 == $num % 5) {
	print "Buzz\n";
}
