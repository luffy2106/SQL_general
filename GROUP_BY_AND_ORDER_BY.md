#### Ex 1
- Question
```
https://www.hackerrank.com/challenges/weather-observation-station-5
```
- Solution
```
select city, length(city) from STATION ORDER BY length(city) ASC, city ASC limit 1;
select city, length(city) from STATION ORDER BY length(city) DESC, city ASC limit 1;
```

#### Ex 2
- Question
```
https://www.hackerrank.com/challenges/more-than-75-marks
```
- Solution
```
SELECT NAME FROM STUDENTS
WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3) ASC, ID ASC;
```

#### Ex 3
- Question
```
https://www.hackerrank.com/challenges/name-of-employees
```
- Solution
```
SELECT NAME FROM Employee
ORDER BY NAME ASC;
```

#### Ex 4
- Question
```
https://www.hackerrank.com/challenges/what-type-of-triangle
```
- Solution
```
SELECT concat(name, '(', LEFT(occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name asc;

SELECT concat('There are a total of', " ", count(occupation)," ", lower(occupation),"s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY count(occupation) asc, occupation asc;
```
