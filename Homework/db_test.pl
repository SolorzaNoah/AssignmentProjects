#!/usr/bin/perl

use warnings;
use DBI;

my $dbfile = "foo.db";
 
my $dsn      = "dbi:mysql:foo=$dbfile";
my $user     = "student";
my $password = "Welcome1!";
my $dbh = DBI->connect($dsn, $user, $password, {
});
 
