package calc;
#packaging subroutines 
require Exporter;
@ISA = qw (Exporter);
@EXPORT = qw(square cube);
#defining first subroutine
sub square {
	print $_ * $_."\n";
}
sub cube {
	print $_ * $_ * $_."\n";

}

1; 
#not sure about the double quotes when performing math, hopefull doesnt matter
