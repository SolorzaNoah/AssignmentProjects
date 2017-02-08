#!/usr/bin/perl

use warnings;
use strict;

#Declaring an array
my @foo;

#Initializing an array
$foo[0] = 1;
$foo[1] = "whatever";

#Printing out an array
print "@foo\n";

#Printing an array without the space added by the double
#quotes
print @foo;
print "\n";

#Declaring and initializing an array
my @baz = (1,4,7,9,"whatever");
print "@baz\n";

#Assigning a series
@baz = (1..10);
print "@baz\n";

#Initialization of strings with qw
my @bar = qw(what whut whot);
print "@bar\n";

#Changing an individual item in an array
$bar[1] = "blah";
print "@bar\n";

#Print out an individual item from an array
print "$bar[2]!!!!\n";

#FIX THIS DR G!!!!!
#Reversing an array
@bar = reverse(@bar);
print "@bar\n";

#Sorting an array
@bar = sort(@bar);
print "@bar\n";

#Pushing on to an array
my $qux = "boo";
push(@bar,$qux);
print "@bar\n";
$qux = "noodle";
push(@bar,$qux);
print "@bar\n";

#Popping off an array
pop(@bar);
print "@bar\n";
print "Before popping \$qux is $qux\n";
$qux = pop(@bar);
print "After popping \$qux is $qux\n";
print "@bar\n";

#Shifting off an array
shift(@bar);
print "@bar\n";
unshift(@bar,$qux);
print "@bar\n";


#Taking in user input in and putting it into an array
my @corge = <STDIN>;
chomp(@corge);
print "@corge\n";
