#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;
use feature 'say';


my %cars;

$cars{'EV'}->{'KIA'}->{'NIRO'} = { 'year' => 2020 , 'battery_size' => 64, 'onboard_charger_rate' => 7.2 , 'aer' => 239 };
$cars{'EV'}->{'TESLA'}->{'MODEL 3'} = { 'year' => 2021 , 'battery_size' => 82, 'onboard_charger_rate' => 7.2 , 'aer' => 322 };
$cars{'EV'}->{'CHEVY'}->{'BOLT'} = { 'year' => 2021 , 'battery_size' => 60, 'onboard_charger_rate' => 7.2 , 'aer' => 259 };

my %electric_rate;

$electric_rate{'NY'} = '0.13';
$electric_rate{'FL'} = '0.07';

foreach my $ev_brand ( keys %{$cars{'EV'}} ) {

    print "-" x 50;

    foreach my $model ( keys %{$cars{'EV'}->{$ev_brand}} )  {
        print "\n";
        say "$ev_brand  $model $cars{'EV'}->{$ev_brand}->{$model}->{'year'}";
        say "All electric range: $cars{'EV'}->{$ev_brand}->{$model}->{'aer'} miles";
        my $charge_time = $cars{'EV'}->{$ev_brand}->{$model}->{'battery_size'}  / $cars{'EV'}->{$ev_brand}->{$model}->{'onboard_charger_rate'} ; 
        my $miles_per_kWh =  $cars{'EV'}->{$ev_brand}->{$model}->{'aer'}   /  $cars{'EV'}->{$ev_brand}->{$model}->{'battery_size'}  ;
        say "Time to charge: " . sprintf("%.2f" , $charge_time ) . " hours";
        say "Miles per kWh : " . sprintf("%.2f" , $miles_per_kWh) . " miles";
        print "\n";
    
        foreach my $state ( keys %electric_rate )  {
           my $total_price = $cars{'EV'}->{$ev_brand}->{$model}->{'battery_size'}  * $electric_rate{$state} ;
           say "$state state 0-100% battery charge price: \$ " .  sprintf("%.2f" , $total_price);
        }
    }
}
