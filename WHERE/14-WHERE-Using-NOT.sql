SELECT COUNT(*)
FROM customers
WHERE NOT country='France';

SELECT COUNT(*)
FROM suppliers
WHERE NOT country='USA';
