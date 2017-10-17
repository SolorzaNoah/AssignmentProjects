#!/usr/bin/perl

$foo = "I am very happy.\n";

print $foo;
#replacing all instances of happy with depressed
$foo =~ s/happy/depressed/;

print "The statement has been corrected:\n";
print $foo