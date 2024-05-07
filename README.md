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

Take a look at "SELECT.txt"  for example  

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

Take a look at "IF.txt"  for example

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
##### 6.1 ORDER BY
The ORDER BY keyword is used to sort the result-set in ascending or descending order.

For more examples, take a look at GROUP_BY_AND_ORDER_BY.txt 

#### 7. Top/LIMIT
Get the first X rows of the table
The following querys are equal.
- TOP: put at the beginning of the query
SELECT TOP 10 * FROM table_name;
- LIMIT: put at the end of the query
SELECT * FROM table_name LIMIT 10;


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
Take a look at JOIN/LEFT_JOIN for more example
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
