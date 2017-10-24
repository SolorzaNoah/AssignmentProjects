#!/usr/bin/perl

use warnings;

print "Knock Knock\n";
my $reply = <STDIN>;
open MIRACLE,'>>','text_that_you_just_appended.txt'||die;
print MIRACLE $reply;
close MIRACLE;

open DISASTER,'<','file_being_read_from.txt';
@message = <DISASTER>;
close DISASTER;
print "@message\n";