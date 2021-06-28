package EVCalc;
use Dancer2;

use StateRates;

use Data::Dumper;

our $VERSION = '0.1';

get '/' => sub {
    template 'calc' => { 'title' => 'EVCalc', };
};

post '/' => sub {
    # look into documenting the difference between query_parameters, body_parameters and params
    my $aer =  body_parameters->get('aer');
    my $battery_size = body_parameters->get('battery_size');
    my $obc = body_parameters->get('obc');
    

    my $state_rates_fh;
    my $state_rates = StateRates::get_state_rates();
    my %rates;
    
    foreach my $state (sort keys %{$state_rates} )  {
           
        my $total_price = $battery_size  * ( $state_rates->{$state}->{'electric_rate' } / 100 ) ;
        $rates{$state} = { 'electric_rate' => $state_rates->{$state}->{'electric_rate' }, 'total_price' => sprintf("%.2f" , $total_price) };

    }
    
    template 'calc' => {title => 'EVCalc', aer => $aer, battery_size => $battery_size , obc => $obc , state_rates => \%rates }
};

true;
