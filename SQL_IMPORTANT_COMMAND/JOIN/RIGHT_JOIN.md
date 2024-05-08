#### Ex1
- Question
```
https://www.w3resource.com/sql-exercises/sql-joins-exercise-12.php
```
Write a SQL statement to generate a list in ascending order of salespersons id who work either for one or more customers or have not yet joined any of the customers. Show salesmand_id, salesman name, salesman city and all the information about his customer, 
- Solution
```
/*
The execices ask to show salespersons who work either for one or more customers or have not yet joined any of the customers. it means that we need to show 
all salesman in the table 2, even some salesman_id is not present in the table 1 => We need to use right join
/*
select salesman.name AS "Salesman", salesman.city, customer.customer_id, customer.cust_name, customer.city, customer.grade  
from customer
RIGHT JOIN salesman ON customer.salesman_id = salesman.salesman_id
ORDER BY salesman.salesman_id ASC;
```


