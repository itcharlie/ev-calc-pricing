package StateRates;
use strict;
use warnings;

my %state_rates = (
    'Louisiana ' => {
                    'electric_rate' => '9.58'
                    },
    'Oklahoma ' => {
                    'electric_rate' => '8.92'
                    },
    'Ohio ' => {
                'electric_rate' => '11.83'
                },
    'Minnesota ' => {
                    'electric_rate' => '12.48'
                    },
    'Arizona ' => {
                    'electric_rate' => '11.7'
                },
    'Utah ' => {
                'electric_rate' => '10.04'
                },
    'Virginia ' => {
                    'electric_rate' => '11.05'
                    },
    'Tennessee ' => {
                    'electric_rate' => '10.36'
                    },
    'District Of Columbia ' => {
                                'electric_rate' => '12.26'
                                },
    'Kentucky ' => {
                    'electric_rate' => '10.46'
                    },
    'New Jersey ' => {
                        'electric_rate' => '16.18'
                    },
    'Wisconsin ' => {
                    'electric_rate' => '14.05'
                    },
    'Wyoming ' => {
                    'electric_rate' => '10.47'
                },
    'South Dakota ' => {
                        'electric_rate' => '10.99'
                        },
    'Alaska ' => {
                    'electric_rate' => '21.32'
                },
    'New Hampshire ' => {
                        'electric_rate' => '18.93'
                        },
    'Colorado ' => {
                    'electric_rate' => '12.14'
                    },
    'Idaho ' => {
                'electric_rate' => '10.05'
                },
    'Alabama ' => {
                    'electric_rate' => '12.38'
                },
    'Iowa ' => {
                'electric_rate' => '10.87'
                },
    'Washington ' => {
                        'electric_rate' => '9.76'
                    },
    'Illinois ' => {
                    'electric_rate' => '12.3'
                    },
    'Vermont ' => {
                    'electric_rate' => '18.38'
                },
    'Indiana ' => {
                    'electric_rate' => '12.25'
                },
    'New Mexico ' => {
                        'electric_rate' => '12.53'
                    },
    'Connecticut ' => {
                        'electric_rate' => '21.29'
                    },
    'South Carolina ' => {
                            'electric_rate' => '11.99'
                        },
    'Delaware ' => {
                    'electric_rate' => '11.77'
                    },
    'California ' => {
                        'electric_rate' => '21.43'
                    },
    'Florida ' => {
                    'electric_rate' => '11.65'
                },
    'Arkansas ' => {
                    'electric_rate' => '9.42'
                    },
    'Massachusetts ' => {
                        'electric_rate' => '22.32'
                        },
    'Missouri ' => {
                    'electric_rate' => '9.38'
                    },
    'Oregon ' => {
                    'electric_rate' => '11.01'
                },
    'New York ' => {
                    'electric_rate' => '18.27'
                    },
    'Montana ' => {
                    'electric_rate' => '10.72'
                },
    'Rhode Island ' => {
                        'electric_rate' => '23.41'
                        },
    'Nevada ' => {
                    'electric_rate' => '11.53'
                },
    'Nebraska ' => {
                    'electric_rate' => '9.41'
                    },
    'Maryland ' => {
                    'electric_rate' => '12.61'
                    },
    'Mississippi ' => {
                        'electric_rate' => '10.88'
                    },
    'North Dakota ' => {
                        'electric_rate' => '9.44'
                        },
    'West Virginia ' => {
                        'electric_rate' => '11.2'
                        },
    'Maine ' => {
                'electric_rate' => '16.5'
                },
    'Michigan ' => {
                    'electric_rate' => '16.92'
                    },
    'Kansas ' => {
                    'electric_rate' => '11.87'
                },
    'Texas ' => {
                'electric_rate' => '11.39'
                },
    'North Carolina ' => {
                            'electric_rate' => '10.6'
                        },
    'Hawaii ' => {
                    'electric_rate' => '30.55'
                },
    'Pennsylvania ' => {
                        'electric_rate' => '13.09'
                        },
    'Georgia ' => {
                    'electric_rate' => '10.94'
                }
);




sub get_state_rates {
    return  \%state_rates;
};

