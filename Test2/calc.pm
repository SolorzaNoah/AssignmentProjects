package calc;
#packaging subroutines 
require Exporter;
@ISA = qw (Exporter);
@EXPORT = qw(square cube);
#defining first subroutine
sub square {
	print $num * $num;
}
sub cube {
	print $num * $num * $num;

}

1; 
#not sure about the double quotes when performing math, hopefull doesnt matter
