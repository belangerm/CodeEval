#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $row = <$fh>) {
  chomp($row);
  my @words = split / /, $row;
  for my $word (reverse(@words)){
    print "$word ";
  }
  print "\n";
}

