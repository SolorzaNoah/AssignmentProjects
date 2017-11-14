#!/usr/bin/perl

use warnings;

open DATA, '<','data.csv' || die;

@data = <DATA>;
chomp(@data);
close DATA;

shift (@data);
open DATA, '>', 'newdatafile.csv' || die;
close DATA;

foreach $individual (@data){
		$individual=~ s/\r//;
		@data2 = split(',',$individual);
		open DATA, '>>', 'newdatafile.csv' || die;
		print DATA "$data2[3].$data2[5].$data2[6].$data2[7].$data2[8].$data2[9].\n";
		close DATA;
		print "$data2[3].$data2[5].$data2[6].$data2[7].$data2[8].$data2[9].\n";
}
		
