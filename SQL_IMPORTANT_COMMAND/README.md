# SQL_general
The most important SQL commands for data analytics

Note :
- in DB2 , if you use string in query, you should use '' instead of "", otherwise it will parse error. MySQL, otherwise, accept both ways
Ex:
```
SELECT * FROM CITY
WHERE CountryCode = 'JPN';
```
#### 1. SELECT/FROM/WHERE, Distinct
Key command
- Select Distinct : select the unique value
- From : the source to query
- Where : to clarify the condition

For more example, take a look at 
- SELECT.md  
- 20SQL_exercises_must_do/big_countries.txt
- 20SQL_exercises_must_do/find_customer_referee.txt

#### 2. CASE WHEN ... ELSE ... THEN

Take a look at "CASE_WHEN_ELSE_THEN.txt" for example


#### 3. Aggregation
- SUM
- COUNT
- AVG
- MIN 
- MAX

Take a look at "Aggregations.txt" for example

#### 4. IF
The IF() function returns a value if a condition is TRUE, or another value if a condition is FALSE.
Ex 1:
```
SELECT IF(500<1000, 5, 10);
```
The answer : 5
Ex 2:
```
SELECT OrderID, Quantity, IF(Quantity>10, "MORE", "LESS")
FROM OrderDetails;
```
For more example, take a look at:
- IF.txt
- 20SQL_exercises_must_do/triangle-judgement.txt

#### 5. Finding string by pattern 

#### 5.1 SQL Wildcard Characters

A wildcard character is used to substitute one or more characters in a string.
Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-  Symbol "%" : Represents zero or more characters
```
SELECT * FROM Customers
WHERE CustomerName LIKE '%es';
```
The result:
```
CustomerID	CustomerName	ContactName	Address	City	PostalCode	Country
11 	B's Beverages 	Victoria Ashworth 	Fauntleroy Circus 	London 	EC2 5NT 	UK 
23 	Folies gourmandes 	Martine Rancé 	184, chaussée de Tournai 	Lille 	59000 	France 
31 	Gourmet Lanchonetes 	André Fonseca 	Av. Brasil, 442 	Campinas 	04876-786 	Brazil 
34 	Hanari Carnes 	Mario Pontes 	Rua do Paço, 67 	Rio de Janeiro 	05454-876 	Brazil 
47 	LINO-Delicateses 	Felipe Izquierdo 	Ave. 5 de Mayo Porlamar 	I. de Margarita 	4980 	Venezuela 
76 	Suprêmes délices 	Pascale Cartrain 	Boulevard Tirou, 255 	Charleroi 	B-6000 	Belgium 
```
-  Symbol "-" : Represents a single character
```
SELECT * 
FROM Words
WHERE Word LIKE 'H___T';
```

#### 5.2 REGEXP

Take a look at "REGEXP.txt" for example


#### 6. GROUP BY/ORDER BY
##### 6.1 GROUP BY
- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

For more example,tke a look at :
- 20SQL_exercises_must_do/classes-more-than-5-students.txt
- 20SQL_exercises_must_do/biggest-single-number.txt
- 20SQL_exercises_must_do/not-boring-movies.txt
- 20SQL_exercises_must_do/product-sales-analysis-i.txt
- 20SQL_exercises_must_do/sales-analysis-iii.txt
##### 6.1 ORDER BY
The ORDER BY keyword is used to sort the result-set in ascending or descending order.

For more examples, take a look at 
- GROUP_BY_AND_ORDER_BY.txt 
- 20SQL_exercises_must_do/duplicate_emails.txt

#### 7. LIMIT
Get the first X rows of the table
- LIMIT: put at the end of the query
```
SELECT * FROM table_name LIMIT 10;
```
You can use TOP command but it is not supported in MySQL

#### 8. SQL variable
To assign a value to a user-defined variable.
- Using the SET statement
```
SET @variable_name = value;
```
or 
```
SET @variable_name := value;
```
Using the SELECT statement
```
SELECT 
  MAX(msrp) INTO @msrp
FROM 
  products;
```
or 
```
SET @msrp = (SELECT MAX(msrp) FROM products);
```

For more examples, take a look at set_variable.txt

#### 9. MANIPULATE SQL TABLE
#### 9.1 CREATE
- CREATE TABLE
```
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```
- CREATE TABLE WITH PRIMARY KEY
```
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
```
- CREATE TALBE FROM ANOTHER TABLE
```
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;
```
- CREATE VIEW : views are virtual representations of data based on predefined queries, it does not store data.
```
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = "Brazil";
```
We can then query the VIEW
```
SELECT * FROM [Brazil Customers];
```
#### 9.2 ALTER
The ALTER TABLE command adds, deletes, or modifies columns in a table.The ALTER TABLE command also adds and deletes various constraints in a table.
- Add column to table
```
ALTER TABLE Customers
ADD Email varchar(255);
```
- Delete column from table
```
ALTER TABLE Customers
DROP COLUMN Email;
```
- Rename column
Ex : This example rename column "BirthDate" to "year"
```
ALTER TABLE Employees
ALTER COLUMN BirthDate year;
```
#### 9.3 UPDATE
The UPDATE statement is used to modify the existing records in a table.
Ex:
```
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
```

For more example, take a look at:
- 20SQL_exercises_must_do/swap-salary.txt



#### 10. JOIN
There are the different types of the JOINs in SQL
Take a look at here for more info 
```
https://www.w3schools.com/sql/sql_join.asp
```

##### 10.1 (INNER) JOIN 
Returns records that have matching values in both tables. You can use "JOIN" or "INNER JOIN", it's the same
Syntax :
```
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```
Take a look at JOIN/INNER_JOIN for more example
##### 10.2 LEFT (OUTER) JOIN
- Returns all records from the left table(table 1), and the matched records from the right table(table 2). 
- The LEFT JOIN keyword returns all records from the left table (table 1), even if there are no matches in the right table (table 2).
- The result is 0 records from the right side, if there is no match.
You can use "LEFT JOIN" or "LEFT OUTER JOIN", it's the same
Syntax:
```
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```
For more example, take at look at  
- JOIN/LEFT_JOIN 
- 20SQL_exercises_must_do/combine_2_tables.txt
- 20SQL_exercises_must_do/employee_bonus.txt
##### 10.3 RIGHT (OUTER) JOIN 
- Returns all records from the right table(table 2), and the matched records from the left table(table 1)
- The RIGHT JOIN keyword returns all records from the right table (table 2), even if there are no matches in the left table (table 1).
- The result is 0 records from the left side, if there is no match.
You can use "RIGHT JOIN" or "RIGHT OUTER JOIN", it's the same
```
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```
Take a look at JOIN/RIGHT_JOIN for more example
##### 10.3 FULL (OUTER) JOIN
- Returns all records when there is a match in either left or right table
- If there are rows in "table 1" that do not have matches in "table 2", or if there are rows in "table 2" that do not have matches in "table 1", those rows will be listed as well, and the missing value will be "null"
- You can use "FULL JOIN" or "FULL OUTER JOIN", it's the same
```
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
```
Take a look at JOIN/FULL_JOIN for more example

##### 10.4 SELF JOIN
In SQL, a self join is a join operation where a table is joined with itself. This can be useful when you want to combine rows from the same table based on a related column. Self joins are typically used when you have a table that contains hierarchical data or when you need to compare rows within the same table.
```
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
```
For more example, take a look at:
- 20SQL_exercises_must_do/employee_earn_more_than_manager.txt
#### 11. UNION
The UNION operator is used to combine the result-set of two or more SELECT statements.
- Every SELECT statement within UNION must have the same of number of columns 
- The columns must also have similar data types
- The columns in every SELECT statement must also be in the same order
- You can add another column during the UNION (take a look at example 3, UNION.md)
```
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
```

#### 12. BETWEEN ... AND ...
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included.
Syntax
```
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```
- BETWEEN
```
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
```
- NOT BETWEEN
```
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;
```
- BETWEEN with IN
```
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);
```

#### 13. WITH ... AS()
NOTE : WITH clause is not supported by all database system
The SQL WITH clause allows you to give a sub-query block a name (a process also called sub-query refactoring), which can be referenced in several places within the main SQL query. 
```
WITH temporaryTable (averageValue) as
    (SELECT avg(Attr1)
    FROM Table)
    SELECT Attr1
    FROM Table, temporaryTable
    WHERE Table.Attr1 > temporaryTable.averageValue;
```

In this query, WITH clause is used to define a temporary relation temporaryTable that has only 1 attribute averageValue. averageValue holds the average value of column Attr1 described in relation Table. The SELECT statement that follows the WITH clause will produce only those tuples where the value of Attr1 in relation Table is greater than the average value obtained from the WITH clause statement. 

#### 14. OVER/ PARTITION BY()/Window Functions
Refence 
```
https://www.geeksforgeeks.org/sql-server-over-clause/
```
The main components of the OVER clause:
- Window functions: The windows functions are needed for applying them on the window frames that are defined by the OVER clause. A window frame is a set of rows belonging to a common condition. Normally window function go with aggregation function such as AVG, SUM, MIN, MAX ...
- PARTITION BY sub-clause: This is the main sub-clause that partitions the rows into windows and for each row, the values of window functions applied will be calculated.
- ORDER BY: This is used to order the rows in the partition by default it is the ascending order.
- ROWS or RANGE: It limits the rows from a start point and endpoint in the particular window, to use the ROWS and RANGE clause we need to ORDER BY clause as well. The RANGE and ROWS clauses are similar but the only difference is ROWS clause considers duplicates as well whereas the RANGE class doesn’t consider duplicates.

Ex:
```
SELECT * , AVG(studentMarks) OVER (PARTITION BY sectionName) AS sectionAverage,
MAX(studentMarks) OVER (PARTITION BY sectionName) AS sectionHighest,
MIN(studentMarks) OVER (PARTITION BY sectionName) AS sectionLeast
FROM studentsSectionWise
ORDER BY sectionName
```
##### 14.1 How to use OVER with ROWS 
Syntax
```
ROWS BETWEEN _number_rows_preceding PRECEDING AND CURRENT ROW
```
###### 14.1.1 USE CASE 1 
Suppose that you want to calculate moving_avg_salary with the window size of 4.
- Input
```
employee_id | salary
------------|-------
     1       | 50000
     2       | 55000
     3       | 60000
     4       | 65000
     5       | 70000
```
- Query
```
SELECT
  employee_id,
  salary,
  -- Calculate the moving average with a window of 4 rows
  AVG(salary) OVER (
    ORDER BY employee_id
    ROWS BETWEEN 3 PRECEDING AND CURRENT ROW  -- Includes 3 preceding rows and the current row
  ) AS moving_avg_salary
FROM employees
ORDER BY employee_id;  -- Order by the same column used in the window function
```
- Output
```
employee_id | salary | moving_avg_salary
------------|--------|-----------------
     1       | 50000  |      50000
     2       | 55000  |      52500  -- Average of (50000, 55000)
     3       | 60000  |      55000  -- Average of (50000, 55000, 60000)
     4       | 65000  |      57500  -- Average of (50000, 55000, 60000, 65000)
     5       | 70000  |      62500  -- Average of (55000, 60000, 65000, 70000)
```
Exlaination:
- Row 1: Until current row there is one row => moving_avg_salary is this row
- Row 2: Until current row there is two row => moving_avg_salary is avarage salary of current row and lastest row
- Row 3: Until current row there is two row => moving_avg_salary is avarage salary of current row and 2 lastest row
- Row 4: Until current row there is two row => moving_avg_salary is avarage salary of current row and 3 lastest row
- Row 5: Until current row there is two row => moving_avg_salary is avarage salary of current row and 3 lastest row

###### 14.1.2 USE CASE 2
Suppose that you want to calculate the average moving_avg_salary until the current row, you can use 'ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW'
- Input
```
employee_id | salary
------------|-------
     1       | 50000
     2       | 55000
     3       | 60000
     4       | 65000
     5       | 70000
```
- Query
```
SELECT *, AVG(salary)
-- Calculate the moving average with a window of 4 rows
AVG(salary) OVER (
  ORDER BY employee_id
  ROWS ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW  -- Includes all the preceding rows and the current row
) AS moving_avg_salary
FROM employees
ORDER BY employee_id;  -- Order by the same column used in the window function
```
- Output
```
employee_id | salary | moving_avg_salary
------------|--------|-----------------
     1       | 50000  |       50000
     2       | 55000  |       52500   -- Average of (50000, 55000)
     3       | 60000  |       55000   -- Average of (50000, 55000, 60000)
     4       | 65000  |       57500   -- Average of (50000, 55000, 60000, 65000)
     5       | 70000  |       60000   -- Average of (50000, 55000, 60000, 65000, 70000)
```
##### 14.2 How to use OVER with RANGE
The RANGE clause defines a window frame based on a range of values. Unlike ROWS, which operates strictly on row count, RANGE includes rows with values within a specified range from the current row(but by the key specified by ORDER BY), often used with an ORDER BY clause.

Take a look at the example above to see the key difference between ROWS and RANGE:
##### 14.2.1 The case when OVER and RANGE is the same
It's when the value of the key specified by ORDER BY is unique(in the following example, the key is exam_id)
Given Input Data
```
student_id | exam_id | score
-----------|---------|-------
     1     |   1     |  80
     1     |   2     |  90
     2     |   3     |  85
     2     |   4     |  75
     2     |   5     |  95
```
If you're calculating a running total using ROWS, you might use ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW. This is similar to RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, but it strictly refers to the position of rows, not their values.
```
SELECT
  student_id,
  exam_id,
  score,
  SUM(score) OVER (
    ORDER BY exam_id
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS running_total_score
FROM exams
ORDER BY exam_id;
```
Output with ROWS
```
student_id | exam_id | score | running_total_score
-----------|---------|-------|--------------------
     1     |   1     |  80   |       80
     1     |   2     |  90   |      170  -- Cumulative sum of (80, 90)
     2     |   3     |  85   |      255  -- Cumulative sum of (80, 90, 85)
     2     |   4     |  75   |      330  -- Cumulative sum of (80, 90, 85, 75)
     2     |   5     |  95   |      425  -- Cumulative sum of (80, 90, 85, 75, 95)
```
The result is identical to the RANGE example because the data has a unique sequence (distinct exam_ids). In this case, both ROWS and RANGE will produce the same result.

##### 14.2.1 When Do They Differ? 
The difference becomes more apparent when there are overlapping or duplicate values in the ORDER BY column. For instance, if exam_id had duplicates, RANGE would include all rows with the same exam_id, whereas ROWS would strictly maintain position relative to the current row.

Let's consider an adjusted example where exam_id has duplicates:
```
student_id | exam_id | score
-----------|---------|-------
     1     |   1     |  80
     1     |   1     |  90
     2     |   2     |  85
     2     |   2     |  75
     2     |   3     |  95
```
If you calculate a running total with ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, the order and sum are based strictly on row position:
```
SELECT
  student_id,
  exam_id,
  score,
  SUM(score) OVER (
    ORDER BY exam_id
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS running_total_score
FROM exams
ORDER BY exam_id;
```
The output with ROWS:
```
student_id | exam_id | score | running_total_score
-----------|---------|-------|--------------------
     1     |   1     |  80   |       80
     1     |   1     |  90   |      170
     2     |   2     |  85   |      255
     2     |   2     |  75   |      330
     2     |   3     |  95   |      425
```
If you calculate a running total with RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW, all rows with the same exam_id will be included:
```
student_id | exam_id | score | running_total_score
-----------|---------|-------|--------------------
     1     |   1     |  80   |       170  -- Includes all rows with exam_id = 1
     1     |   1     |  90   |       170
     2     |   2     |  85   |      330  -- Includes all rows with exam_id = 2
     2     |   2     |  75   |      330
     2     |   3     |  95   |      425
```
Key Differences:
- ROWS strictly maintains the row position. If rows are duplicated or reordered, ROWS counts them sequentially relative to the current row.
- RANGE considers all rows with the same value or within a specified range, accommodating situations where duplicates exist or range-based inclusion is needed.


#### 15. EXISTS 
The EXISTS operator is used to test for the existence of any record in a subquery.
The EXISTS operator returns TRUE if the subquery returns one or more records.
Syntax:
```
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);
```
For more example, take a look at 
- 20SQL_exercises_must_do/customer_never_order.txt

#### 16. DELETE
The DELETE statement is used to delete existing records in a table.
```
DELETE FROM table_name WHERE condition;
```
Ex :
```
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
```
For more advanced example, take a look at 
- 20SQL_exercises_must_do/delete_duplicate_emails.txt

#### 17. LAG

At many instances, user would like to access data of the previous row or any row before the previous row from the current row. To solve this problem SQL Server’s LAG() window function can be used
```
LAG (scalar_expression [, offset [, default ]]) 
    OVER ( [ partition_by_clause ] order_by_clause )
```
Ex:
```
SELECT Organisation, [Year], Revenue,
LAG (Revenue, 1, 0) 
OVER (PARTITION BY Organisation ORDER BY [Year]) AS PrevYearRevenue  
FROM Org 
ORDER BY Organisation, [Year]; 
```

#### 18. The SQL IN Operator
In SQL, the IN operator is used to specify multiple values in a WHERE clause. It allows you to specify a list of values that you want to match in a specific column.

Here's an example to illustrate how the IN operator works:

Let's say we have a table named Products with a column category. We want to select all products that belong to either 'Electronics' or 'Clothing'.
```
SELECT * FROM Products
WHERE category IN ('Electronics', 'Clothing');
```

For more example, take a look at
- https://leetcode.com/problems/sales-person/submissions/1257041543/