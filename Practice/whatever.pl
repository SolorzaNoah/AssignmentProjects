#!/usr//bin/perl

use warnings;

@foo = (1..5);
	print "@foo\n";

push (@foo,10);
print "@foo\n";

pop (@foo);
pop (@foo);

print "@foo\n";

shift (@foo);
print "@foo\n";

unshift (@foo,destruction);
print "@foo\n";
