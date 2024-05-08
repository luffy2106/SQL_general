Tutorial:
https://www.mysqltutorial.org/mysql-variables/

#### Ex 1
- Question
```
https://www.hackerrank.com/challenges/earnings-of-employees
```
- Solution
```
-- Define a variale which present the maximum total earnings for all employees
SET @max_earning = (SELECT MAX(months*salary) FROM Employee); 
-- Define a variale which present the total number of employees who have maximum total earnings.
SET @count_max_earning = (SELECT COUNT(employee_id) FROM Employee WHERE months*salary = @max_earning);

SELECT @max_earning, @count_max_earning
```

#### Ex 2
- Question
```
https://www.hackerrank.com/challenges/the-blunder
```
- Solution
```
-- Get the average salary from the original table
SET @actual := (SELECT avg(salary) FROM EMPLOYEES);
-- Update EMPLOYEES table by removing all "0" causing by keyboard errors
UPDATE
    EMPLOYEES 
SET
    salary = REPLACE(salary, '0', '');
-- Get the real average salary from the updated table   
SET @miscalcualated := (SELECT avg(salary) FROM EMPLOYEES);
-- Get the resulting error
SELECT ceiling(abs(@actual - @miscalcualated));
```






