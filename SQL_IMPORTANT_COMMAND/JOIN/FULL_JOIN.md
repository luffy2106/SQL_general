#### Ex
- Question
```
Make full join of 2 tables Customers and Orders and show all the attribute of these 2 tables(even with null value)
```
- Solution
```
SELECT Customers.customer_id, Customers.first_name, Orders.amount
FROM Customers
FULL JOIN Orders
ON Customers.customer_id = Orders.customer
WHERE Orders.amount >= 500;
```