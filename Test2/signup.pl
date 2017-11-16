#!/usr/bin/perl

use warnings;

#filehandle reading in txt file
open DATA, '<', 'names.txt'||die;
@names = <DATA>;
close DATA;

#displaying list to user
print @names;
#asking if they want to add their name
print "\nWould you like to add your name to the list?(y/n)";
chomp($reply=<STDIN>);
#adding name if they replied yes
if ($reply eq "y"){
	#taking in name to append
	print "What is your name?\n";
	chomp($user_i = <STDIN>);
	#opening file handle to send name to txt file
	open ADD, '>>', 'names.txt'||die;
	print "$user_i\n";
	close ADD;
}
