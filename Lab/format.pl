#!/usr/bin/perl

use warnings;

open HANDLE,'<','data2.csv' || die;
my $datas = <HANDLE>;

	
#	shift $datas;
#test to see if shift worked
#	foreach (@datas)
#	{print "$_\n";}

while (my $datas = <HANDLE>) {
	chomp $datas;
	my @separated = split ",",$datas;
	print $separated[2],"\n";
	print $separated[1],"\n";
	print $separated[0],"\n";
}

close HANDLE;