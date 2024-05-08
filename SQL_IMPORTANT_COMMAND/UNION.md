#### Ex 1
- Problem
```
https://www.hackerrank.com/challenges/weather-observation-station-5/problem
```
- Solution
```
(SELECT city, length(city) FROM station ORDER BY LENGTH(city) ASC, city ASC LIMIT 1)
UNION
(SELECT city, length(city) FROM station ORDER BY LENGTH(city) DESC, city ASC LIMIT 1); 
```
#### Ex 2
- Problem
```
https://www.w3resource.com/sql-exercises/union/sql-union-exercise-3.php
```
- Solution
```
(SELECT salesman_id, customer_id FROM orders)
UNION
(SELECT salesman_id, customer_id FROM customer)
```
#### Ex3
- Problem 
```
https://www.w3resource.com/sql-exercises/union/sql-union-exercise-1.php
```
From the following tables, write a SQL query to find all salespeople and customers(id, name) located in the city of London.
- Solution
```
(SELECT salesman_id "ID", name, 'Salesman' FROM salesman WHERE city='London')
UNION
(SELECT customer_id "ID", cust_name, 'Customer' FROM customer WHERE city='London')
```


