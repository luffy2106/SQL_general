#### Ex 1
- Question
```
https://www.w3resource.com/sql-exercises/sql-joins-exercise-9.php
```
- Solution
```
SELECT customer.cust_name, customer.city, customer.grade, salesman.name AS "Salesman", salesman.city as "salesmancity"
FROM customer
LEFT JOIN salesman ON customer.salesman_id = salesman.salesman_id
WHERE customer.grade < 300
ORDER BY customer.customer_id ASC;
```

