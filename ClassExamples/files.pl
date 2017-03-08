#!/usr/bin/perl

use warnings;
use strict;

#Variable Declaration
my (@names,$num,$file,@info);

#Opening a file for reading
open INFILE, '<', 'names.txt' || die "Can't open file $!";
chomp(@names = <INFILE>);
close INFILE;

#Looking at the data in @names
print "@names\n";

#Change the 2nd name in the array
$names[1] = "Bobby Sue Jehosephat";

#Printing out the changed array
$num = 1;
foreach (@names){
	print "$num: $_\n";
	$num++;
}

#Writing our new array/list out to a file.
open OUTFILE,'>>','names2.txt' || die "Die, die, bad, bad, $!";
foreach (@names){
	print OUTFILE "$_\n";
}
close OUTFILE;

#Reading in a csv file
print "Give me the name of a csv file: ";
chomp($file = <STDIN>);
open INFILE,'<',"$file" || die "Can't open file $!\n";
chomp(@info = <INFILE>);
close INFILE;

#Splitting up a string
foreach my $line (@info){
	my @user = split(',',$line);
	foreach my $item (@user){
		$item = "steve\@gmail.com";
	}

}

#Print out the info array
foreach (@info){
	print "$_\n";
}
