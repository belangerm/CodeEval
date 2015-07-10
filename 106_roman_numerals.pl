#!/usr/bin/perl

use strict;

my @conversion = ( [1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'], [100, 'C'], [90, 'XC'], [50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']  );
 
open(my $fh, "<", $ARGV[0]) or die "Cannot open file: $!";

while (my $line = <$fh>) {
  chomp($line);
  my $result = '';
  foreach my $symbol (@conversion) {
  	my ($arabic, $roman) = @$symbol;
  	if ($line >= $arabic){
  		($result, $line) = ($result .= $roman x int($line/$arabic), $line % $arabic);
  	}  	
  }
  print "$result\n";

}
