#### Ex 1
- Question
```
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function
```
- Solution
```
SELECT COUNT(ID)
FROM CITY
WHERE POPULATION > 100000;
```
#### Ex 2
- Question
```
https://www.hackerrank.com/challenges/revising-aggregations-sum
```
- Solution
```
select sum(population)
from city
where district = "California";
```
#### Ex 3
- Question
```
https://www.hackerrank.com/challenges/revising-aggregations-the-average-function
```
- Solution
```
select avg(population)
from CITY
where district = "California";
```
#### Ex 4
- Question
```
https://www.hackerrank.com/challenges/japan-population
```
- Solution
```
select sum(population)
from CITY
where countrycode = 'JPN';
```
#### Ex 5
- Question
```
https://www.hackerrank.com/challenges/population-density-difference
```
- Solution
```
select max(population)-min(population)
from CITY;
```
#### Ex 6
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-2
```
- Solution
```
SELECT round(sum(LAT_N), 2), round(sum(LONG_W), 2) from STATION;
```
#### Ex 7
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-13
```
- Solution
```
select round(sum(LAT_N),4) from STATION
WHERE LAT_N > 38.7880 and LAT_N < 137.2345;
```
#### Ex 8
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-14
```
- Solution
```
select round(max(LAT_N),4) from STATION
WHERE LAT_N < 137.2345;
```
#### Ex 9
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-15
```
- Solution
```
select round(LONG_W,4) from STATION
where LAT_N = (select max(LAT_N) from STATION WHERE LAT_N < 137.2345);
```
#### Ex 10
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-16
```
- Solution
```
select round(MIN(LAT_N),4) from STATION
WHERE LAT_N > 38.7780;
```
#### Ex 11
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-17
```
- Solution
```
select round(LONG_W,4) from STATION
where LAT_N = (SELECT MIN(LAT_N) from STATION WHERE LAT_N > 38.7780);
```
#### Ex 12
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-18
```
- Solution
```
select round(abs(MIN(LAT_N)-MAX(LAT_N)) + abs(MIN(LONG_W)-MAX(LONG_W)),4)
from STATION;
```
#### Ex 13
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-19
```
- Solution
```
select round(sqrt(POW(max(LAT_N)-min(LAT_N), 2) + POW(max(LONG_W)-min(LONG_W), 2)),4)
FROM STATION;
```
