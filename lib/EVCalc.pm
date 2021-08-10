package EVCalc;
use Dancer2;

use StateRates;

use Data::Dumper;

our $VERSION = '0.1';

get '/' => sub {
    template 'calc' => { 'title' => 'EVCalc', };
};

post '/' => sub {
    my $aer =  body_parameters->get('aer');
    my $battery_size = body_parameters->get('battery_size');
    my $obc = body_parameters->get('obc');
    my $charge_time = $battery_size / $obc;
    my $miles_per_kWh = $aer / $battery_size;

    my $state_rates_fh;
    my $state_rates = StateRates::get_state_rates();
    my %rates;
    
    my %temp_hash = (
        title => 'EVCalc', 
        aer => $aer, 
        battery_size => $battery_size ,
        obc => $obc ,
        charge_time =>  sprintf("%.2f" , $charge_time ),
        miles_per_kWh =>  sprintf("%.2f" , $miles_per_kWh )
    );

    foreach my $state (sort keys %{$state_rates} )  {
           
        my $total_price = $battery_size  * ( $state_rates->{$state}->{'electric_rate' } / 100 ) ;
        $rates{$state} = { 'electric_rate' => $state_rates->{$state}->{'electric_rate' }, 'total_price' => sprintf("%.2f" , $total_price) };

    }
    $temp_hash{state_rates} = \%rates;
    
    template 'calc' => \%temp_hash 
};

true;
