package StateRates;
use strict;
use warnings;

my %state_rates = (
    '2021' => {
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
    },

    '2022' => {
        'Louisiana ' => {
                        'electric_rate' => '11.2'
                        },
        'Oklahoma ' => {
                        'electric_rate' => '10.16'
                        },
        'Ohio ' => {
                    'electric_rate' => '12.53'
                    },
        'Minnesota ' => {
                        'electric_rate' => '12.71'
                        },
        'Arizona ' => {
                        'electric_rate' => '12.37'
                    },
        'Utah ' => {
                    'electric_rate' => '10.27'
                    },
        'Virginia ' => {
                        'electric_rate' => '12.1'
                        },
        'Tennessee ' => {
                        'electric_rate' => '11.5'
                        },
        'District Of Columbia ' => {
                                    'electric_rate' => '13.23'
                                    },
        'Kentucky ' => {
                        'electric_rate' => '11.93'
                        },
        'New Jersey ' => {
                            'electric_rate' => '16.33'
                        },
        'Wisconsin ' => {
                        'electric_rate' => '14.81'
                        },
        'Wyoming ' => {
                        'electric_rate' => '10.28'
                    },
        'South Dakota ' => {
                            'electric_rate' => '11.03'
                            },
        'Alaska ' => {
                        'electric_rate' => '22.09'
                    },
        'New Hampshire ' => {
                            'electric_rate' => '21.27'
                            },
        'Colorado ' => {
                        'electric_rate' => '13.59'
                        },
        'Idaho ' => {
                    'electric_rate' => '9.9'
                    },
        'Alabama ' => {
                        'electric_rate' => '12.86'
                    },
        'Iowa ' => {
                    'electric_rate' => '10.97'
                    },
        'Washington ' => {
                            'electric_rate' => '9.92'
                        },
        'Illinois ' => {
                        'electric_rate' => '13.12'
                        },
        'Vermont ' => {
                        'electric_rate' => '19.34'
                    },
        'Indiana ' => {
                        'electric_rate' => '13.41'
                    },
        'New Mexico ' => {
                            'electric_rate' => '13.11'
                        },
        'Connecticut ' => {
                            'electric_rate' => '22.29'
                        },
        'South Carolina ' => {
                                'electric_rate' => '12.73'
                            },
        'Delaware ' => {
                        'electric_rate' => '12.24'
                        },
        'California ' => {
                            'electric_rate' => '23.6'
                        },
        'Florida ' => {
                        'electric_rate' => '13.36'
                    },
        'Arkansas ' => {
                        'electric_rate' => '10.33'
                        },
        'Massachusetts ' => {
                            'electric_rate' => '25.36'
                            },
        'Missouri ' => {
                        'electric_rate' => '10.06'
                        },
        'Oregon ' => {
                        'electric_rate' => '10.86'
                    },
        'New York ' => {
                        'electric_rate' => '21.02'
                        },
        'Montana ' => {
                        'electric_rate' => '10.67'
                    },
        'Rhode Island ' => {
                            'electric_rate' => '23.56'
                            },
        'Nevada ' => {
                        'electric_rate' => '12.94'
                    },
        'Nebraska ' => {
                        'electric_rate' => '9.43'
                        },
        'Maryland ' => {
                        'electric_rate' => '13.41'
                        },
        'Mississippi ' => {
                            'electric_rate' => '11.48'
                        },
        'North Dakota ' => {
                            'electric_rate' => '9.44'
                            },
        'West Virginia ' => {
                            'electric_rate' => '11.95'
                            },
        'Maine ' => {
                    'electric_rate' => '18.33'
                    },
        'Michigan ' => {
                        'electric_rate' => '17.11'
                        },
        'Kansas ' => {
                        'electric_rate' => '12.52'
                    },
        'Texas ' => {
                    'electric_rate' => '12.28'
                    },
        'North Carolina ' => {
                                'electric_rate' => '10.88'
                            },
        'Hawaii ' => {
                        'electric_rate' => '37.61'
                    },
        'Pennsylvania ' => {
                            'electric_rate' => '14.18'
                            },
        'Georgia ' => {
                        'electric_rate' => '11.63'
                    }
    },
    '2023' => {
        'Louisiana ' => {
                        'electric_rate' => '11.94'
                        },
        'Oklahoma ' => {
                        'electric_rate' => '10.96'
                        },
        'Ohio ' => {
                    'electric_rate' => '14.31'
                    },
        'Minnesota ' => {
                        'electric_rate' => '13.08'
                        },
        'Arizona ' => {
                        'electric_rate' => '12.62'
                    },
        'Utah ' => {
                    'electric_rate' => '10.66'
                    },
        'Virginia ' => {
                        'electric_rate' => '14.03'
                        },
        'Tennessee ' => {
                        'electric_rate' => '12.11'
                        },
        'District Of Columbia ' => {
                                    'electric_rate' => '14.91'
                                    },
        'Kentucky ' => {
                        'electric_rate' => '12.68'
                        },
        'New Jersey ' => {
                            'electric_rate' => '16.92'
                        },
        'Wisconsin ' => {
                        'electric_rate' => '16.05'
                        },
        'Wyoming ' => {
                        'electric_rate' => '10.28'
                    },
        'South Dakota ' => {
                            'electric_rate' => '11.25'
                            },
        'Alaska ' => {
                        'electric_rate' => '21.9'
                    },
        'New Hampshire ' => {
                            'electric_rate' => '31.72'
                            },
        'Colorado ' => {
                        'electric_rate' => '14.2'
                        },
        'Idaho ' => {
                    'electric_rate' => '10.58'
                    },
        'Alabama ' => {
                        'electric_rate' => '14.36'
                    },
        'Iowa ' => {
                    'electric_rate' => '11.3'
                    },
        'Washington ' => {
                            'electric_rate' => '10.48'
                        },
        'Illinois ' => {
                        'electric_rate' => '16.04'
                        },
        'Vermont ' => {
                        'electric_rate' => '19.95'
                    },
        'Indiana ' => {
                        'electric_rate' => '15.43'
                    },
        'New Mexico ' => {
                            'electric_rate' => '13.53'
                        },
        'Connecticut ' => {
                            'electric_rate' => '30.24'
                        },
        'South Carolina ' => {
                                'electric_rate' => '13.99'
                            },
        'Delaware ' => {
                        'electric_rate' => '14.18'
                        },
        'California ' => {
                            'electric_rate' => '26.45'
                        },
        'Florida ' => {
                        'electric_rate' => '15.01'
                    },
        'Arkansas ' => {
                        'electric_rate' => '11.42'
                        },
        'Massachusetts ' => {
                            'electric_rate' => '31.71'
                            },
        'Missouri ' => {
                        'electric_rate' => '10.73'
                        },
        'Oregon ' => {
                        'electric_rate' => '12.04'
                    },
        'New York ' => {
                        'electric_rate' => '23.57'
                        },
        'Montana ' => {
                        'electric_rate' => '10.73'
                    },
        'Rhode Island ' => {
                            'electric_rate' => '28.96'
                            },
        'Nevada ' => {
                        'electric_rate' => '12.94'
                    },
        'Nebraska ' => {
                        'electric_rate' => '9.35'
                        },
        'Maryland ' => {
                        'electric_rate' => '15.87'
                        },
        'Mississippi ' => {
                            'electric_rate' => '13.18'
                        },
        'North Dakota ' => {
                            'electric_rate' => '9.91'
                            },
        'West Virginia ' => {
                            'electric_rate' => '13.09'
                            },
        'Maine ' => {
                    'electric_rate' => '24.12'
                    },
        'Michigan ' => {
                        'electric_rate' => '17.99'
                        },
        'Kansas ' => {
                        'electric_rate' => '12.97'
                    },
        'Texas ' => {
                    'electric_rate' => '14.18'
                    },
        'North Carolina ' => {
                                'electric_rate' => '12.67'
                            },
        'Hawaii ' => {
                        'electric_rate' => '44.96'
                    },
        'Pennsylvania ' => {
                            'electric_rate' => '17.99'
                            },
        'Georgia ' => {
                        'electric_rate' => '12.87'
                    }
	
	}
);




sub get_state_rates {
    return  \%state_rates;
};

