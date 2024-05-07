Tutorial: https://www.w3schools.com/sql/sql_join_inner.asp

#### Ex 1
- Question
```
https://www.hackerrank.com/challenges/asian-population
```
- Solution
```
select sum(CITY.POPULATION) from CITY
INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.CODE 
WHERE COUNTRY.CONTINENT = "Asia";
```
#### Ex 2
- Question
```
https://www.hackerrank.com/challenges/african-cities
```
- Solution
```
SELECT CITY.NAME FROM CITY
INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT = "Africa"; 
```
#### Ex 3
- Question
```
https://www.hackerrank.com/challenges/average-population-of-each-continent
```
- Solution
```
select COUNTRY.CONTINENT, FLOOR(avg(CITY.POPULATION)) from CITY
INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
group by COUNTRY.CONTINENT;
```