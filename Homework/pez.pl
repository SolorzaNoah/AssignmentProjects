#!/usr/bin/perl

use warnings;

print "I am Pez De'Spencer, I m currently empty so give me 10 flavors. Remember to add a comma and press enter after each one.\n";

for($i=0;$i<10;$i++){

$arr[$i]=<STDIN>;
chomp @arr;
}
print "Ah, I now have @arr inside of me! Yummy.\n";

@rra= reverse(@arr);

print "I will now give them back to you, enjoy...\n@rra Here ya go!\n";

print "I am now empty!\n";

