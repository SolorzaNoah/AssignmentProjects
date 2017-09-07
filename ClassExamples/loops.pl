#!/usr/bin/perl

use warnings;
use strict;

#Variable Declaration and Initialization
my ($cntrl_var, $user_input, @data);
$cntrl_var = 0;
@data = ("Tom","Sue","Bob","Sam","Jon","Mae");

#A While Loop
while ($cntrl_var < 5) {
	print "We are at $cntrl_var\n";
	$cntrl_var++;
}

print "The variable is now $cntrl_var\n";

#A do loop
do {
	print "The variable is $cntrl_var\n";
	$cntrl_var--;
} while ($cntrl_var != 0);

print "After the loop \$cntrl_var is $cntrl_var\n";

#A For Loop
for (my $i=0;$i<5;$i++) {
	print "\$i is $i\n";
}

#Looping across an array
for (my $i=0;$i<scalar(@data);$i++){
	print "$data[$i]\n";
}

#A Foreach loop
foreach my $name(@data){
	print "$name\n";
}

#Using the superglobal $_ with a foreach loop
foreach (@data){
	print "$_\n";
}

#Controlling a loop with user input
do {
	print "Give me a word or type quit to quit: ";
	chomp($user_input = <STDIN>);
	print "You typed $user_input\n";
} while ($user_input ne "quit");
