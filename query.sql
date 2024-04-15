On-Time Arrival Percentage = 
    DIVIDE(
        [On-Time Arrivals],
        [TotalFlights],
        0
    ) * 100

On-Time Arrivals = 
    COUNTROWS(
        FILTER('airline_data', 'airline_data'[Arrival Delay] <= 0)
    )

On-Time Departures = 
    COUNTROWS(
        FILTER('airline_data', 'airline_data'[Departure Delay] <= 0)
    )

On-Time Departure Percentage = 
    DIVIDE(
        [On-Time Departures],
        [TotalFlights],
        0
    ) * 100

Cancellation Rate By Airline = 
    DIVIDE(
        SUM('airline_data'[Cancelled]),
        COUNTROWS('airline_data'),
        0
    ) * 100

AVG Arrival Delay Mins = AVERAGEX('airline_data', 'airline_data'[Arrival Delay Mins])
AVG Departure Delay Mins = AVERAGEX('airline_data', 'airline_data'[Departure Delay Mins])

AVG Arrival Delay = 
    AVERAGEX(
        VALUES('airline_data'[Reporting_Airline]), 
        CALCULATE(
            AVERAGE('airline_data'[Arrival Delay])
        )
    )

AVG Departure Delay = 
    AVERAGEX(
        VALUES('airline_data'[Reporting_Airline]), 
        CALCULATE(
            AVERAGE('airline_data'[Departure Delay])
        )
    )

TotalFlights = COUNTROWS('airline_data')

Late Aircraft = SUM('airline_data'[LateAircraftDelay])
Carrier = SUM('airline_data'[CarrierDelay])
NAS = SUM('airline_data'[NASDelay])
Weather = SUM('airline_data'[WeatherDelay])
Security = SUM('airline_data'[SecurityDelay])
