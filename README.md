# ev-calc-pricing

Dancer web app that will calculate cost of EV charging by US State.

Disclaimer: The information from this application may vary from the recommended EPA rating of an electric car. This application is purely for the use of educational purposes. 

The average U.S. state rates are sourced by paylesspower.com, every year the national average of electrical rates of the month of January are posted in paylesspower.com site and this data is manually extracted to produce the calculations you see in this application. 

--------------------------------------------------------------------------------

Quick guide on running this application in linux:

1- Install Dancer2 ( https://metacpan.org/dist/Dancer2/view/lib/Dancer2/Manual.pod#INSTALL ) 

2- git clone the repository 

   git clone https://github.com/itcharlie/ev-calc-pricing.git

3- run the application :

   $   cd ev-calc-pricing && plackup -r -p 5000 bin/app.psgi 

4- load the application on your local browser:
    
   http://localhost:5000

--------------------------------------------------------------------------------
Average Electric Rates by State data source:

https://paylesspower.com/blog/electric-rates-by-state/

https://www.eia.gov/electricity/data/state/  (  Average Price by State by Provider (EIA-861) 1990-2019 )

https://www.eia.gov/petroleum/gasdiesel/


Car Spec sources:

https://electrek.co/2020/11/10/tesla-model-3-82-kwh-battery-pack-new-cells/

https://www.caranddriver.com/chevrolet/bolt-ev/specs

https://www.kiamedia.com/us/en/models/niro-ev/2020/specifications

https://www.kiamedia.com/us/en/models/niro-phev/2020/specifications
