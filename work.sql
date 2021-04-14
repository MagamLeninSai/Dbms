SELECT * FROM products WHERE productScale BETWEEN '1:10' AND '1:12';

SELECT * FROM products WHERE productScale IN('1:10','1:12');

SELECT * FROM payments WHERE checkNumber LIKE 'H%7';

SELECT * FROM orders WHERE STATUS='in Process' AND comments IS NULL;

SELECT * FROM products WHERE MSRP >=150 AND buyPrice >=85 ORDER BY MSRP DESC;

SELECT DISTINCT orderNumber FROM orderdetails;

SELECT DISTINCT orderNumber FROM orderdetails LIMIT 10;

SELECT DISTINCT orderNumber FROM orderdetails LIMIT 10 OFFSET 3;

SELECT productLine,COUNT(*) AS count FROM products GROUP BY productLine HAVING COUNT >10;

SELECT productLine,COUNT(*) count FROM products GROUP BY productLine WITH ROLLUP;