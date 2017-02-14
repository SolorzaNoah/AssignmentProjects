#!/usr/bin/perl

use warnings;
use strict;

#Variable Declarsations
my ($foo, $bar, $baz, $qux);

#Initializing a variable
$foo = 0;

#A basic if statement
if ($foo == 1){
	print "Yeah, it equals one!\n";
}

#A Not Equal Example
if ($foo != 1){
	print "It does not equal one!\n";
}

#Other Logical Comparisons
if ($foo <= 1){
	print "It is less than or equal to one!\n";
}

#A Perl trick of reversing the if and then portions
#of the statement.
print "Yeah!\n" if ($foo == 1);

#The else keyword
$bar = 2;
if ($bar > $foo){
	print "$bar is larger\n";
} else {
	print "$foo is larger\n";
}

#The elsif keyword lets you check another condition
if ($foo == $bar){
	print "$foo is equal to $bar\n";
} elsif ($foo > $bar){
	print "$foo is greather than $bar\n";
} else {
	print "$foo is less than $bar\n";
}

#String comparison
$baz = "cat";
$qux = "dog";

if ($baz ne $qux){
	print "$baz and $qux are not the same\n";
}

#Boolean Logic: AND or OR
$foo = 11;
$bar = 0;
$baz = 12;

if (
   ($foo > $baz) || 
   (($bar > $baz) && ($bar != $baz))
   ){
	print "Something relevant!!\n";
}
