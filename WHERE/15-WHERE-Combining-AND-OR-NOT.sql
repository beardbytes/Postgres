SELECT COUNT(*)
FROM orders
WHERE shipcountry='Germany'
AND (freight<50 OR freight>175);

SELECT COUNT(*)
FROM orders
WHERE (shipcountry='Canada' OR shipcountry='Spain')
AND shippeddate > '1997-05-01';
