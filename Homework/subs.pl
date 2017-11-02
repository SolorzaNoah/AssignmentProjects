#!/usr/bin/perl

use warnings;

print "Pick a name:\n";
chomp($name=<STDIN>);

sub cool_line {
	print "$name,I am your father\n";
}
cool_line

