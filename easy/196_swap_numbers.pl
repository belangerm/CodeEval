#!/usr/bin/perl

# Swap Numbers (https://www.codeeval.com/open_challenges/196/)
use strict;
use warnings;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my @words = split(' ', $line);
  for (@words) {
    $_ =~ s/(\d)(\D+)(\d)/$3$2$1/;
    print $_ . ' ';
  }
  print "\n";
}

