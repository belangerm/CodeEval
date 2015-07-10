#!/usr/bin/perl

use strict;
use warnings;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (<$fh>) {
  chomp;
  $_ =~ s/\b(\w)/\U$1/g;

  print "$_\n";
}
