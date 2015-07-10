#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  $line =~ tr/A-Za-z/a-zA-Z/;
  print "$line\n";
}
