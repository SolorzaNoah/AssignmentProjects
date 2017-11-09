#!/usr/bin/perl

use warnings;

use File::Basename;

my $name = "/usr/local/bin/perl";
my $basename = basename $name;

print "Your file path is $name\n";
print "Your basename is $basename\n";