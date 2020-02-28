SELECT COUNT(*)
FROM orders
WHERE employeeid=3;

SELECT COUNT(*)
FROM order_details
WHERE quantity>20;

SELECT COUNT(*)
FROM orders
WHERE freight>=250;
