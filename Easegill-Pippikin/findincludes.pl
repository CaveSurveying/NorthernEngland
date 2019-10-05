#!/usr/bin/perl

foreach $svxfile (@ARGV) {
    $svxfile =~ s/\.svx//;
    $command = "gawk -f findincludes.awk $svxfile.svx";
    system($command);
}
