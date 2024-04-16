# US Domestic Flight Cancellations Analysis (2015-2017)
This dataset comprises information on flight delays and cancellations spanning from *January 2015 to December 2017*. The [dataset](https://www.kaggle.com/datasets/gabrielluizone/us-domestic-flights-delay-prediction-2013-2018) from Kaggle was sourced from the U.S. Department of Transportation's (DOT)

## Questions
1. During which months did flight delays peak?
2. What were the top 3 airports with the highest average departure delay minutes?
3. What were the main factors contributing to flight delays during this period?
4. Which factor accounted for the largest percentage of delays?
5. Which airline had the highest cancellation rate?
6. How did the on-time arrival and departure percentages compare?

## Analysis Process
1. Renaming columns in correct way eg. ArrDelay = Arrival Delay
3. Replacing incorrect value with NaN, 0 (null), or missing letters
4. Removing unnecessary around 18 columns
  - `Quarter, Origin State Fips, Origin State Name, Destination State Fips, Destination State Name, Origin Airport World Code, Destination Airport World Code, Departure Delay 15 Min, Arrival Delay 15 Min, Departure Delay Groups, Arrival Delay Groups, Departure Time Block (hour), CRS Elapsed Time, Flights, Distance Group, FirstDepartureTime through Diverted Distance `
5. DAX calculation - [LINK](https://github.com/zukui1984/Airline_Delay_2015_2017/blob/master/query.sql)

## Suggestions
1. Address carrier issues that contribute significantly to delays, such as aircraft maintenance, crew scheduling, and ground operations.
2. Improve coordination and efficiency within the National Aviation System to reduce air traffic control delays.
3. Implement strategies to better manage aircraft turnaround times and minimize unnecessary delays from late arrivals.
4. Enhance airport infrastructure and operations at major hubs like ATL (Atlanta), ORD (Orlando), and LAX (Los Angeles) to improve on-time performance.
5. Provide additional resources eg. customer service and support to regional carriers to reduce their higher cancellation rates.
6. Increase staffing and plans more organize during peak summer travel periods to avoid big delays.


## Power BI Visualisation
![Image](https://github.com/zukui1984/Airline_Delay_2015_2017/blob/master/images/power-bi-full.JPG)

