package EVCalc;
use Dancer2;

use StateRates;

use Data::Dumper;

our $VERSION = '0.1';

get '/' => sub {
    template 'calc' => { 'title' => 'EVCalc', };
};

post '/' => sub {
    my $aer          = body_parameters->get('aer');
    my $battery_size = body_parameters->get('battery_size');
    my $obc          = body_parameters->get('obc');
    my $year         = body_parameters->get('year') || "2023";

    my %results = calculate_costs( $aer, $battery_size, $obc, $year );

    template 'calc' => \%results;
};

sub calculate_costs {
    my ( $aer, $battery_size, $obc, $year ) = @_;

    my $charge_time   = $battery_size / $obc;
    my $miles_per_kWh = $aer / $battery_size;

    my $state_rates = StateRates::get_state_rates();
    my %rates;

    my %temp_hash = (
        title         => 'EVCalc',
        aer           => $aer,
        year          => $year,
        battery_size  => $battery_size,
        obc           => $obc,
        charge_time   => sprintf( "%.2f", $charge_time ),
        miles_per_kWh => sprintf( "%.2f", $miles_per_kWh )
    );

    foreach my $state ( sort keys %{$state_rates} ) {
        my $total_price =
          $battery_size * ( $state_rates->{$state}{$year} / 100 );
        $rates{$state} = {
            'electric_rate' => $state_rates->{$state}{$year},
            'total_price'   => sprintf( "%.2f", $total_price )
        };

    }
    $temp_hash{state_rates} = \%rates;

    return %temp_hash;
}


true;
