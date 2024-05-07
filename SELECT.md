#### Ex 1
- Question
```
https://www.hackerrank.com/challenges/revising-the-select-query/problem
```
- Solution
```
SELECT * FROM City
WHERE CountryCode='USA' and population > 100000;
```
#### Ex 2
- Question
```
https://www.hackerrank.com/challenges/revising-the-select-query-2/problems
```
- Solution
```
SELECT NAME from CITY
WHERE CountryCode = "USA" and population > 120000;
```
#### Ex 3
- Question
```
https://www.hackerrank.com/challenges/select-all-sql/problem
```
- Solution
```
SELECT * from CITY;
```
#### Ex 4
- Question
```
https://www.hackerrank.com/challenges/select-by-id/problem
```
- Solution
```
SELECT * FROM CITY
WHERE ID = '1661';
```
#### Ex 5
- Question
```
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
```
- Solution
```
SELECT * FROM CITY
WHERE CountryCode = 'JPN';
```
#### Ex 6
- Question
```
https://www.hackerrank.com/challenges/japanese-cities-name/problem
```
- Solution
```
SELECT NAME from CITY
WHERE CountryCode = 'JPN';
```
#### Ex 7
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-1/problem
```
- Solution
```
SELECT CITY, STATE from STATION;
```
#### Ex 8
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-3
```
- Solution
```
SELECT DISTINCT CITY
FROM STATION
WHERE mod(ID,2) = 0;
```
#### Ex 9
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-4
```
- Solution
```
SELECT COUNT(CITY) - COUNT( DISTINCT CITY )
FROM STATION;
```
#### Ex 10
- Question
```
https://www.hackerrank.com/challenges/salary-of-employees
```
- Solution
```
SELECT NAME FROM Employee
WHERE SALARY > 2000 and months < 10;
```





