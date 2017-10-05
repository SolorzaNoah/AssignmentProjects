#!/usr/bin/perl

#setting pragmas
use warnings;

#prompting for user input
print "Pick a number traveller!\n";
#designating user input and chomping
chomp($num = <STDIN>);

#set,check,change
for (my $i=0; $i<$num; $i++)
{
print "Looping\n\n";
}

