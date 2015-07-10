#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  my $sum;
  $sum += $_ for split(//, $line);
  print "$sum\n";
}
