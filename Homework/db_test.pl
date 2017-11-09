#!/usr/bin/perl

use warnings;
use DBI;

my $dbfile = "foo.db";
 
my $dsn      = "dbi:SQLite:foo=$dbfile";
my $user     = "";
my $password = "";
my $dbh = DBI->connect($dsn, $user, $password, {
   PrintError       => 0,
   RaiseError       => 1,
   AutoCommit       => 1,
   FetchHashKeyName => 'NAME_lc',
});
 
$dbh->disconnect;