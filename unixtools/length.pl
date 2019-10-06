#!/usr/bin/perl

foreach $svxfile (@ARGV) {
    $svxfile =~ s/\.svx$//;
    $command = "cavern $svxfile.svx | gawk '/Total length/ { print \$7 }'";
    $ans = `$command`; $length = 0.0 + $ans;
    printf "%8.2f\tmetres\t%s\n", $length, $svxfile;
}
