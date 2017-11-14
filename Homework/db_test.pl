#Jonathan Ninan,Rolando Negron,Noah Solorzano
use DBI;

<<<<<<< HEAD
my $dbfile = "foo.db";
 
my $dsn      = "dbi:mysql:foo=$dbfile";
my $user     = "student";
my $password = "Welcome1!";
my $dbh = DBI->connect($dsn, $user, $password, {
});
 
=======
my $driver = "mysql";
my $dbfile = "foo";

my $dsn      = "DBI:$driver:database=$dbfile";
my $user     = "student";
my $password = "Welcome1!";
my $dbh = DBI->connect($dsn, $user, $password) or die $DBI::errstr;

#my $var = $dbh->quote("state");
my $sql1 = ('SELECT state FROM data');
my $sth = $dbh->prepare($sql1);
$sth->execute();
my @row;
while (@row = $sth->fetchrow_array()) {  # retrieve one row
    print join(", ", @row), "\n";
}
$sth->finish();

my $sql2 = ('SELECT city FROM data');
my $sth = $dbh->prepare($sql2);
$sth->execute();
my @row;
while (@row = $sth->fetchrow_array()) {  # retrieve one row
    print join(", ", @row), "\n";
}

$sth->finish();
$dbh->disconnect;
>>>>>>> 04604c92c2c35b52ec6938b8e841a8dee7f3c70b
