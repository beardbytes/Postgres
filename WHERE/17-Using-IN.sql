SELECT COUNT(*)
FROM suppliers
WHERE country IN ('Germany','France','Spain','Italy');

SELECT COUNT(*)
FROM products
WHERE categoryid IN (1, 4, 6, 7);
