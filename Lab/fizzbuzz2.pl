#!/usr/bin/perl

use warnings;

print "Give me 5 numbers, and I shall determine something!\n";

for ( $i=0;$i<5; $i++){
$num = <STDIN>;
chomp ($arr[$i] = $num);
}
#test print
#print "@arr\n";
#foreach wouldnt work so doing if
for(my $i=0;$i<5; $i++){
	
	if ($arr[$i] %15 == 0)
	{print "FizzBuzz $arr[$i]\n";
	 next}
	
	if ($arr[$i] %3 == 0)
	{print "Fizz $arr[$i]\n"}
	
	if ($arr[$i] %5 == 0)
	{print "Buzz $arr[$i]\n"}


}