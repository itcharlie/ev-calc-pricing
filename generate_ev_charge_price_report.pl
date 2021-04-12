#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use feature 'say';


my %cars;

$cars{'EV'}->{'KIA'}->{'NIRO'} = { 'year' => 2020 , 'battery_size' => 64, 'onboard_charger_rate' => 7.2 , 'aer' => 239 };
$cars{'EV'}->{'TESLA'}->{'MODEL 3'} = { 'year' => 2021 , 'battery_size' => 82, 'onboard_charger_rate' => 7.2 , 'aer' => 353 };
$cars{'EV'}->{'CHEVY'}->{'BOLT'} = { 'year' => 2021 , 'battery_size' => 60, 'onboard_charger_rate' => 7.2 , 'aer' => 259 };


my $state_rates_fh;
my %electric_rate;

open( $state_rates_fh, "<", "electric_rates.txt" )
	or die "Unable to open file:   $!\n";

while (<$state_rates_fh> ) {
    my @line_data =  split('\t', $_);
    $electric_rate{ $line_data[0] } = $line_data[1] ;
}


foreach my $ev_brand ( keys %{$cars{'EV'}} ) {

    say "-" x 50;

    foreach my $model ( keys %{$cars{'EV'}->{$ev_brand}} )  {
        my $charge_time = $cars{'EV'}->{$ev_brand}->{$model}->{'battery_size'} / $cars{'EV'}->{$ev_brand}->{$model}->{'onboard_charger_rate'}; 
        my $miles_per_kWh =  $cars{'EV'}->{$ev_brand}->{$model}->{'aer'} / $cars{'EV'}->{$ev_brand}->{$model}->{'battery_size'};
        
	say "$ev_brand  $model $cars{'EV'}->{$ev_brand}->{$model}->{'year'}";
        say "All electric range: $cars{'EV'}->{$ev_brand}->{$model}->{'aer'} miles";

        say "Time to charge: " . sprintf("%.2f" , $charge_time ) . " hours";
        say "Miles per kWh : " . sprintf("%.2f" , $miles_per_kWh) . " miles";
        print "\n";
        say  "0-100% battery charge price by State:" ;
        say "-" x 50;

        foreach my $state (sort keys %electric_rate )  {
           
           my $total_price = $cars{'EV'}->{$ev_brand}->{$model}->{'battery_size'}  * ( $electric_rate{$state} / 100 ) ;
           say "$state: \$ " .  sprintf("%.2f" , $total_price);

        }

        say "-" x 50;
    }
}
