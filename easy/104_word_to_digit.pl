#!/usr/bin/perl

use strict;

open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

my %digits = (
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
	"five" => 5,
	"six" => 6,
	"seven" => 7,
	"eight" => 8,
	"nine" => 9,
	"zero" => 0,
);

while (my $line = <$fh>) {
  chomp($line);
  my @words = split(/;/, $line);
  for (@words){
  	print $digits{$_};
  }
  print "\n";
}
