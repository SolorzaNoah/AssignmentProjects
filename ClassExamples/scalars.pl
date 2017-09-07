#!usr/bin/perl

#Pragmas change the way the interpreter runs.
#The warnings pragma provides additional information about potential issues.
use warnings;
#The strict pragma forces you to "register" all variables with the keyword
#"my" before you use them.
use strict;

#Variable declaration
my $foo;

#Variable initialization with a number.
$foo = 1;

#Variable declaration and initialization
my $bar = 2;

#Variable delcaration and initialization with a string(set of characters)
my $baz = "word";

#Printing out the result of Variable addition in multiple ways
my $qux = $foo + $bar;
print "$qux\n";
print "" . ($foo + $bar) . "\n";

#Other arithemetic Operations
print $foo - $bar;
print "\n";
print $foo * $bar;
print "\n";
print $foo / $bar;
print "\n";
print $foo % $bar;
print "\n";

#String Multiplication
print $foo x 5;
print "\n";

#Incrementation, Decrementation, and Binary Operations
$foo++;
print "$foo \n";
$foo--;
print "$foo \n";
$foo += 3;
$foo = $foo + 3;
print "$foo \n";

#Order of Operations Example
$foo = ($foo+3)/2+$bar;
print "$foo \n";

#Taking in user input
print "Give me a word: ";
print "You gave me " . chomp(my $qux = <STDIN>) . "\n";
O

