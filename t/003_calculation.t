use strict;
use warnings;

use Test::More tests => 3;
use EVCalc;

my %results = EVCalc::calculate_costs(300, 75, 11, 2023);

is( $results{charge_time}, '6.82', 'Correct charge time' );
is( $results{miles_per_kWh}, '4.00', 'Correct miles per kWh' );
is( $results{state_rates}->{AL}->{total_price}, '10.72', 'Correct total price for AL' );
