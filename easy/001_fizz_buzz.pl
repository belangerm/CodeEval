#!/usr/bin/perl

use strict;

#my $filename = shift or die "Usage: $0 FILENAME\n";

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $row = <$fh>) {
  my ($x, $y, $n) = split / /, $row;
  for (1..$n){
    print 'F'x!($_ % $x) . 'B'x!($_ % $y) || $_, " ";
  }
  print "\n";

}

