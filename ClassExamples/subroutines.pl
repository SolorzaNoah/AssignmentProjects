#!/usr/bin/perl

use warnings;
use strict;

#Global Variables
my ($foo,$bar,@baz, $quux);
$foo = 0;
$bar = 1;
@baz = ("cow","dog","chicken", "waffle");

#Defining a subroutine that returns the sum
#of two numbers
sub add {
	my $qux = $foo + $bar;
	return($qux);
}

#Calling a subroutine and assigning the returned value to
#a varialbe.
$quux = add;

#Printing out the returned value
print "$quux\n";

#Chaining to print out the returned value
print add . "\n";

#A more robust addition subroutine
sub addition{
	my $num1 = shift(@_);
	my $num2 = shift(@_);
	return($num1 + $num2);
}

$foo = 2;
print "Give me a number: ";
chomp($bar = <STDIN>);
print addition($foo,$bar) . "\n";

#An even more robust subroutine
sub betteradding{
	my $result;
	foreach my $num (@_){
		$result += $num;
	}
	return($result);
}
print "Num1: ";
chomp(my $num1 = <STDIN>);
print "Num2: ";
chomp(my $num2 = <STDIN>);
print "The result is " . betteradding($num1, $num2) . "\n";
