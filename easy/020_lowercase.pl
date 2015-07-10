#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $row = <$fh>) {
  chomp($row);
  print lc($row);
  print "\n";
}
