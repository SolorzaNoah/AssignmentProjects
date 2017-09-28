#!/usr/bin/perl

use warnings;
my $firstloop=2;
while ($firstloop==2) {
	print "The while loop is active, type any character and hit enter to start the second loop, use 2 to remain inside the loop.\n";
	$firstloop=<STDIN>;
}
for my $secondloop (0..4) {
	print "The 'for' loop is active, this message will 'print' 5 times\n";
}
