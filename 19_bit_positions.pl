#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my ($n, $x, $y) = split(/,/, $line);
  my @bin = split(//, (sprintf "%b",$line));
  if ($bin[(-1)*$x] == $bin[(-1)*$y]){
    print "true";
  } else {
    print "false";
  }
  print "\n";
}
