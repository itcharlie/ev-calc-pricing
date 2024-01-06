#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use feature 'say';

my $state_rates_fh;
my %electric_rate;

open( $state_rates_fh, "<", "average_electric_rates_by_year.csv" )
	or die "Unable to open file:   $!\n";

while (<$state_rates_fh> ) {
   my $line = $_;
   $line =~ s/\n|\r//;
   $line =~ chomp($line);

# STATE,AER 2023,AER 2022,AER 2021,AER 2020
    my @line_data =  split(',', $line );
    $electric_rate{ $line_data[0] }{2023}= $line_data[1] ;
    $electric_rate{ $line_data[0] }{2022}= $line_data[2] ;
    $electric_rate{ $line_data[0] }{2021}= $line_data[3] ;
    $electric_rate{ $line_data[0] }{2020}= $line_data[4] ;
}

print Dumper(\%electric_rate);

