#!/usr/bin/perl

use warnings;

open READ,'<','something.txt' || die;
$words = <READ>;
close READ;
print $words;
