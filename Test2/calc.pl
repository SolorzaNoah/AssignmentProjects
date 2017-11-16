#!/usr/bin/perl

use warnings;

use lib '.';
use calc;

print "What number 'do' you want to play with?\n";
chomp($num = <STDIN>);
#taking in user input to send to the subroutines

do square[$num];
do cube[$num];

