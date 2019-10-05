#!/usr/bin/perl

$table_flag = 0; 
$totlength = 0.0;
$toplevelfile = @ARGV[0];
$toplevelfile =~ s/\.svx$//;

open FILE, $toplevelfile . ".svx" or die $!;

while (<FILE>) {
    chomp;
    @f = split; 
    if (@f[1] =~ /BEGINTABLE/) { $table_flag = 1; }
    if (@f[1] =~ /ENDTABLE/) { $table_flag = 0; }
    if ($table_flag) {
	if (@f[0] =~ /\*include/) {
	    $svxfile = @f[1]; $svxfile =~ s:\\:/:;
	    $command = "cavern $svxfile | gawk '/Total length/ { print \$7 }'";
	    $ans = `$command`; $length = 0.0 + $ans; $totlength += $length;
	    ($s, $fullname) = split /;/;
	    printf "%8.2f\tmetres\t%s\t%s\n", $length, $svxfile, $fullname;
	}
    }
}
