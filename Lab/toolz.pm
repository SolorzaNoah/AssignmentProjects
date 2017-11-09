package toolz;

require Exporter;
@ISA = qw (Exporter);
@EXPORT = qw(attention question);

sub attention {
	print "May I have your attention please!\n";
}

sub question {
	print "\nWill the real Slim Shady please stand up!\n\n";
}