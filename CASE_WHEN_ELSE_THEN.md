#### Ex
- Question
```
https://www.hackerrank.com/challenges/what-type-of-triangle
```
- Solution
```
SELECT 
(CASE
    WHEN not (A + B > C and A + C > B and B + C > A) THEN 'Not A Triangle'
    WHEN (A = B and B = C) then 'Equilateral'
    WHEN (A = B or B = C or A = C) THEN 'Isosceles'
    ELSE 'Scalene'
END) 
FROM TRIANGLES;
```
