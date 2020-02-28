SELECT COUNT(*)
FROM orders
WHERE freight > 100 AND shipcountry = 'Germany';

SELECT DISTINCT customerid
FROM orders
WHERE shipvia=2 AND shipcountry='Brazil';
