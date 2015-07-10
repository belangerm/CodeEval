#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my @numbers = split(/ /,$line);
  my @result = sort {$a <=> $b} @numbers;
  print "@result\n";

}
