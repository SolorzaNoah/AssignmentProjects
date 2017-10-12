#!/usr/bin/perl
#forgot bin in shabang line
use warnings;
#misspelled pragma/syntax
print "Is it Even?\n";
chomp($number = <STDIN>);
#not exactly a correction but I chomped o relieve soul soreness
my $even = $number % 2 == 0;
#variables not declared with $
my $odd = $number % 2 == 1;
#needed double equal signs
if (0 == $number % 2) {
#forgot curly braces
        print "The number $number is even \n";
#Bad syntax
} else {
        print "The number $number is odd \n";
#Again no curly braces
}
