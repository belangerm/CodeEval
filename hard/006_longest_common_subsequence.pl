#!/usr/bin/perl

use strict;
use Algorithm::Diff qw/ LCS /;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my ($str1, $str2) = split(/;/,$line);
  my @a = split(//, $str1);
  my @b = split(//, $str2);
  print LCS( \@a, \@b );
  print "\n";
}
