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

print "my %state_rates = (\n";

foreach my $state_name (sort {lc $a cmp lc $b} keys %electric_rate ) {
    print "\t'" . $state_name . "'" . " => {\n";
    print "\t\t\t" . "'2020' => '" . $electric_rate{$state_name}{2020} . "',\n" ;
    print "\t\t\t" . "'2021' => '" . $electric_rate{$state_name}{2021} . "',\n" ;
    print "\t\t\t" . "'2022' => '" . $electric_rate{$state_name}{2022} . "',\n" ;
    print "\t\t\t" . "'2023' => '" . $electric_rate{$state_name}{2023} . "'\n" ;
    print "\t\t\t\},\n";

};
print ")\n";
