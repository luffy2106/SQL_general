#### Ex 1
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-6
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou]';
```
#### Ex 2
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-7
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[aeiou]$';
```
#### Ex 3
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-8
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';
```
#### Ex 4
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-9
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIOU]';
```
#### Ex 5
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-10
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[^AEIOU]$';
```
#### Ex 6
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-11
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIOU]|[^AEIOU]$';
```
#### Ex 7
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-12
```
- Solution
```
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AEIOU].*[^AEIOU]$'
```
