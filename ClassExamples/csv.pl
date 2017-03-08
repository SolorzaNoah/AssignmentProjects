#!/usr/bin/perl

use warnings;
use strict;

#Reading in a csv file
print "Give me the name of a csv file: ";
chomp(my $file = <STDIN>);
open INFILE,'<',"$file" || die "Can't open file $!\n";
chomp(my @info = <INFILE>);
close INFILE;

#Splitting up a string
for(my $i=0;$i<scalar(@info);$i++){
	my @user = split(',',$info[$i]);
	for(my $a=0;$a<scalar(@user);$a++){
		if ($user[$a] eq "steve\@aol.com"){
			$user[$a] = "steve\@gmail.com";
		}
	}
	$info[$i] = join(',',@user);

}

#Print out the info array
foreach (@info){
	print "$_\n";
}
