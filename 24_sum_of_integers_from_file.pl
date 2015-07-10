#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

my $sum = 0;
while (my $line = <$fh>) {
  chomp($line);
  $sum += $line;
}
print "$sum\n";
