#!/usr/bin/perl
use strict;
use warnings;

use feature 'say';

## Formula
#   $x kwh * $y ( price rate per state ) = total price 
#
#

# say we have a Kia Niro EV 2020 : 64kwh battery pack
#
#  64 kwh * $ .13  cents 
#

print "\n";
say "Kia Niro EV 2020 : 64kwh battery pack";
say "All Electric range: 239 miles";

my $total_price = 64 * .13 ;
my $total_price_fl = 64 * .07 ;
my $charge_time = 64 / 7.2;  # 7.6 is the onboard charger rate ( it can also be 3.3 kwh  rate )  
my $miles_per_kWh = 239 / 64;

say "NYC Full charge price: \$ " .  sprintf("%.2f" , $total_price);
say "FL Full charge price: \$ " .  sprintf("%.2f" , $total_price_fl);
say "Time to charge: " . sprintf("%.2f" , $charge_time ) . " hours";
say "Miles per kWh : " . sprintf("%.2f" , $miles_per_kWh) . " miles";
print "\n";

say "Kia Niro Plug-in Hybrid 2020 : 8.9kwh battery pack";
say "All Electric range: 26 miles";

my $phev_total_price = 8.9 * .13 ;
my $phev_total_price_fl = 8.9 * .07 ;
my $phev_charge_time = 8.9 / 3.3 ;  # 7.2 is the onboard charger rate ( it can also be 3.3 kwh  rate )  
my $phev_miles_per_kWh = 26 / 8.9;

say "NYC Full charge price: \$ " .  sprintf("%.2f" , $phev_total_price);
say "FL Full charge price: \$ " . sprintf("%.2f" ,  $phev_total_price_fl);
say "Time to charge: " . sprintf("%.2f" , $phev_charge_time ) . " hours";
say "Miles per kWh : " . sprintf("%.2f" , $phev_miles_per_kWh) . " miles";
print "\n";



#### Tesla Model 3 
#
say "Tesla Model 3 2021 Long Range: 82kwh battery pack";
say "All Electric range: 322 miles";
my $tesla_total_price = 82 * .13 ;
my $tesla_total_price_fl = 82 * .07 ;
my $tesla_charge_time = 82 / 7.2;  # 7.2 is the onboard charger rate ( it can also be 3.3 kwh  rate )  
my $tesla_miles_per_kWh = 322 / 82;

say "NYC Full charge price: \$ " .  sprintf("%.2f" , $tesla_total_price);
say "FL Full charge price: \$ " .  sprintf("%.2f" , $tesla_total_price_fl);
say "Time to charge: " . sprintf("%.2f" , $tesla_charge_time) . " hours";
say "Miles per kWh : " . sprintf("%.2f" , $tesla_miles_per_kWh) . " miles";

print "\n";


#### Chevy Bolt 2021
#
say "Chevy Bolt 2021: 60kwh battery pack";
say "All Electric range: 259 miles";
my $chevy_total_price = 60 * .13 ;
my $chevy_total_price_fl = 60 * .07 ;
my $chevy_charge_time = 60 / 7.2;  # 7.2 is the onboard charger rate ( it can also be 3.3 kwh  rate )  
my $chevy_miles_per_kWh = 259 / 60;

say "NYC Full charge price: \$ " .  sprintf("%.2f" , $chevy_total_price);
say "FL Full charge price: \$ " .  sprintf("%.2f" , $chevy_total_price_fl);
say "Time to charge: " . sprintf("%.2f" , $chevy_charge_time) . " hours";
say "Miles per kWh : " . sprintf("%.2f" , $chevy_miles_per_kWh) . " miles";

print "\n";







