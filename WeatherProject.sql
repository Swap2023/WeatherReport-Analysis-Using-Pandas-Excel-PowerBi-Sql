#In the below query Created Datebase
create database weather

#fetched all data from file
select * FROM weather.`1. weather data`;

#distinct wind speed values are determined
select distinct  `Wind Speed_km/h`
FROM weather.`1. weather data`; 

#clear weather details values are determined
select count(*) from weather.`1. weather data`
where Weather="Clear";

#count for windspeed where windspped is 4 values are determined
SELECT COUNT(*)
FROM `weather`.`1. weather data`
WHERE `Wind Speed_km/h` = 4;

#count null values  are determined
SELECT COUNT(*) AS NullCount
FROM weather.`1. weather data`
WHERE Weather IS NULL;

#renaming column has been determined 
ALTER TABLE `weather`.`1. weather data`
CHANGE COLUMN `Weather` `Weather Condition` VARCHAR(255);

select * FROM weather.`1. weather data`;

#calculate mean value of visibilty has been determined
select avg(Visibility_km) as mean_visibilty
from weather.`1. weather data`;

#Calculate Variance value has been determined
select stddev_pop(Press_Kpa)
from weather.`1. weather data`;

#Snow weather details has been determined
SELECT COUNT(*)
FROM weather.`1. weather data`
WHERE `Weather Condition` = 'Snow';

#All instances when 'Wind Speed is above 24' and 'Visibility is 25 has been determined
select count(*)
from weather.`1. weather data`
where `Wind Speed_km/h`>24 and Visibility_km=25;

#Minimum & Maximum value of each column against each 'Weather Condition' has been determined
SELECT 
    `Weather Condition`, 
    max(`Visibility_km`) AS Visibility,
    max(`Press_kPa`) AS PressKpa,
    min(`Visibility_km`) AS Visibility,
    min(`Press_kPa`) AS PressKpa
FROM 
    weather.`1. weather data`
GROUP BY 
    `Weather Condition`;
#all the Records where Weather Condition is Fog
select count(*) from weather.`1. weather data`
where `Weather Condition` = 'Fog';
   