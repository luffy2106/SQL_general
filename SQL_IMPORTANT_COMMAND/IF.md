Tutorial : https://www.w3schools.com/sql/func_mysql_if.asp
#### Ex
- Question
```
https://www.hackerrank.com/challenges/the-report
```
- Solution
```
select IF(Grades.Grade >=8 ,Students.Name, NULL), Grades.Grade , Students.Marks from Students, Grades
WHERE Students.Marks >= Grades.Min_Mark and Students.Marks <= Grades.Max_Mark
ORDER BY Grades.Grade desc,Students.Name;  
```











