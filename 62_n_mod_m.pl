#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my ($n, $m) = split(/,/,$line);
  while ($n >= $m){
  	$n -= $m;
  }
  print "$n\n";
}
