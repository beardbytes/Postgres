SELECT COUNT(*)
FROM orders
where orderdate >= '1998-01-01';

SELECT COUNT(*)
FROM orders
where shippeddate < '1997-06-05';
