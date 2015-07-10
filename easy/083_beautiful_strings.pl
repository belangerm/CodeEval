#!/usr/bin/perl

use strict;
use warnings;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my @letters = split('',$line);

  my %hash = ();

  for my $letter ( @letters ) {
    $letter = lc $letter;
    next unless $letter =~ m#[A-Za-z]#;
    if( exists $hash{$letter} ) {
      $hash{$letter}++;
    }
    else {
      $hash{$letter} = 1;
    }
  }

  my @values = sort { $b <=> $a } values %hash;

  my $beauty_sum = 0;
  my $beauty_value = 26;
  for (@values) {
    $beauty_sum += ($_ * $beauty_value);

    $beauty_value-- unless $beauty_value == 1;
  }

  print "$beauty_sum\n";
}
