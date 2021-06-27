#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use feature 'say';

my $state_rates_fh;
my %electric_rate;

open( $state_rates_fh, "<", "electric_rates.txt" )
	or die "Unable to open file:   $!\n";

while (<$state_rates_fh> ) {
    my @line_data =  split('\t', $_);
    $electric_rate{ $line_data[0] }{electric_rate}= $line_data[1] ;
}

print Dumper(\%electric_rate);

