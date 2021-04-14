SHOW DATABASES;

USE classicmodels;

SHOW TABLES;

# The SELECT statement allows you to read data from one or more tables
-- Select Statements Syntax

-- SELECT select_list
-- FROM table_name;

SELECT * FROM customers;   /* selection  - select all records */

SELECT * from employees;

SELECT lastname from employees;   /* projection -- select specific coloumns */

SELECT lastname,firstname,jobTitle from employees;

# MySQL WHERE clause
-- The WHERE clause allows you to specify a search condition for the rows 
-- returned by a query.
# Syntax :
/*  SELECT 
    select_list
FROM
    table_name
WHERE
    search_condition;  */
    
SELECT lastname,firstname,jobTitle from employees where jobTitle='Sales Rep';

SELECT * FROM orderdetails WHERE quantityOrdered >= 50;

/* The search_condition is a combination of one or more predicates using the 
logical operator AND, OR and NOT. */

-- example uses the WHERE clause to find employees whose job titles are Sales Rep and 
-- office codes are 1

SELECT lastname,firstname,jobTitle,officeCode from employees where 
 jobTitle='Sales Rep' AND officeCode=1;
 
SELECT * FROM orderdetails WHERE quantityOrdered >= 50 AND priceEach >100;
 
-- query finds employees whose job titlordersorderse is Sales Rep or employees who locate the office with office code 1:
 
SELECT lastname,firstname,jobTitle,officeCode from employees where 
 jobTitle='Sales Rep' OR officeCode=1;
 
-- The BETWEEN operator returns TRUE if a value is in a range of values
-- syntax: expression BETWEEN low AND high

--  query finds employees who locate in offices whose office code is from 1 to 3:

SELECT lastname,firstname,jobTitle,officeCode from employees WHERE
 officeCode BETWEEN 1 AND 3 ORDER BY officeCode; 
 
-- query to list the orders done in first quarter of 2004

SELECT * FROM orders WHERE shippedDate BETWEEN '2004-01-01' AND '2004-03-31';


# MySQL WHERE with the LIKE operator

 /* The LIKE operator evaluates to TRUE if a value matches a specified pattern.

 To form a pattern, you use % and _ wildcards.

 The % wildcard matches any string of zero or more characters

 while the _ wildcard matches any single character. */

 -- query finds employees whose last names end with the string 'son':

SELECT * FROM employees WHERE lastname LIKE '%son'; -- % any set of Charactors

SELECT * FROM employees WHERE firstname LIKE 'S%'
 OR firstname LIKE 'A%';

SELECT * FROM employees WHERE firstname LIKE '_arry';  -- _ one single charactor

SELECT * FROM employees WHERE firstname NOT LIKE 'A%';

#MySQL WHERE clause with the IN operator
 
-- The IN operator returns TRUE if a value matches any value in a list.
-- Syntax
-- value IN (value1, value2,...)

-- IN condition is used to help reduce the need to use multiple OR conditions in a 
-- SELECT, INSERT, UPDATE, or DELETE statement.

SELECT lastname,firstname,jobtitle,officecode FROM employees WHERE
 officecode IN (1,5,7) ORDER BY officecode;
 
SELECT * FROM customers WHERE
 contactlastname IN ('Young','Smith') ORDER BY contactlastname;
 
SELECT * FROM customers WHERE
 contactlastname NOT IN ('Young','Smith') ORDER BY contactlastname;
 
-- MYSQL WHERE clause with the IS NULL operator
-- NULL Absence of Data or DAta is missing

/* To check if a value is NULL or not, you use the IS NULL operator, 
not the equal operator (=). The IS NULL operator returns TRUE if a value is NULL.

Syntax: 
value IS NULL  */

SELECT lastname,firstname,reportsto FROM employees WHERE
 reportsto IS NULL;
 
SELECT * FROM orders WHERE comments IS NOT NULL ;

SELECT * FROM customers WHERE phone IS NULL;

#WHERE clause with comparison operators
-- >, <, >=, <=, =, <> or != (Not Equals)

SELECT firstname,lastname,jobtitle FROM employees WHERE
 jobtitle <> 'Sales Rep';  -- not equals to operator
 
SELECT firstname,lastname,officecode FROM employees WHERE
 officecode >5 ORDER BY officecode;
 
# MYSQL ORDER BY clause
-- when you use the SELECT Statement to query data from a table,
-- the result set is not sorted. it means that the row in the results set can be in any order
-- tp sort the result set, you add the ORDER BY Clause to the SELECT statement
/* Syntax:
SELECT select_list From table_name
ORDER BY 
column1 [asc/desc],
column2 [asc/desc],
...;  */

SELECT contactLastName,contactFirstName FROM customers
 ORDER BY contactLastName;  -- ascending
 
SELECT contactLastName,contactFirstName FROM customers
 ORDER BY contactLastName DESC;  -- descending
 
SELECT productCode,productName,buyPrice FROM products
 ORDER BY buyPrice DESC;
 
-- Sorting by relative position in result set

SELECT productCode,productName,quantityInStock,buyPrice FROM products
 ORDER BY 3 DESC;   -- 3 means position (quantityinstock)
 
-- Multi level sorting

SELECT contactLastName,contactFirstName FROM customers
 ORDER BY contactLastName DESC, contactFirstName ASC;

SELECT jobTitle,firstName FROM employees
 ORDER BY 1,2; -- 1,2 means position(jobTitle,firstName)
 
#  ORDER BY to sort a result set by an expression 

SELECT orderNumber,orderLineNumber,quantityOrdered * priceEach
 FROM orderdetails;

-- Expressions with column alias names  

SELECT orderNumber,orderLineNumber,quantityOrdered * priceEach AS subTotal
 FROM orderdetails
 ORDER BY 3 DESC;
 
# MySQL DISTINCT clause -- When querying data from a table, you may get duplicate rows. 

-- In order to remove these duplicate rows, 

-- you use the DISTINCT clause in the SELECT statement.

/* Syntax: 
SELECT DISTINCT select_list 
FROM table_name;  */

SELECT lastName FROM employees ORDER BY lastname;  -- 23 records

SELECT DISTINCT lastName FROM employees
 ORDER BY lastname; -- 19 records 4 records are duplicate those are removed
 

SELECT DISTINCT state FROM customers;

-- Distinct with multiple columns

SELECT state,city FROM customers
 WHERE state IS NOT NULL 
 ORDER BY state,city;  -- 49 records

SELECT DISTINCT  state,city FROM customers
 WHERE state IS NOT NULL 
 ORDER BY state,city;  -- 37 records

# LIMIT clause
-- is used to retrieve records from one or more tables in a database and limit the number
--  of records returned based on a limit value.

SELECT * FROM customers;  -- 122 records

SELECT * FROM customers LIMIT 5;  -- 5 records it limits records

SELECT * FROM customers ORDER BY contactLastName LIMIT 5;  -- 5 records it limits records

# The offset keyword allows you to offset the no. of record returned by
-- the LIMIT clause.

SELECT * FROM customers LIMIT 5 OFFSET 2; -- first 2 records will eliminate and add next two records

SELECT DISTINCT state FROM customers WHERE state IS NOT NULL LIMIT 5;

# MySQL AND operator
 /* The AND operator is a logical operator that combines two or more Boolean 
 expressions and returns true only if both expressions evaluate to true. 
 The AND operator returns false if one of the two expressions evaluate to false. */
 
 -- Syntax: boolean_expression_1 AND boolean_expression_2
 
SELECT 1=0 AND 1=1;  -- zero output
 
SELECT customername,country,state FROM customers WHERE
 country = 'USA' AND state = 'CA';
 
SELECT customername,country,state,creditlimit FROM customers WHERE
 country = 'USA' AND state = 'CA' AND creditlimit > 100000; 
 
# The MySQL OR operator combines two Boolean expressions and returns true when
# either condition is true.
-- operator precedence OR then AND

SELECT customerName,country FROM customers WHERE
 country = 'USA' OR country ='France';

SELECT customername, country, creditLimit
FROM customers
WHERE(country = 'USA'OR country = 'France')
      AND creditlimit > 100000;

# MySQL alias for columns
-- Sometimes, column names are so technical that make the query’s output very
-- difficult to understand. To give a column a descriptive name, you can use a
-- column alias.
/* Syntax:
SELECT
   [column_1 | expression] AS descriptive_name
FROM table_name;  */

SELECT CONCAT(lastName,'.',firstName) FROM employees;

SELECT CONCAT(lastName,'.',firstName) AS fullName FROM employees ORDER BY fullName;

SELECT CONCAT(lastName,'.',firstName) fullName FROM employees;

-- Alias names can be used order by , group by & having clauses

# Alias name for table
SELECT * from employees e;

SELECT e.firstName,e.lastName FROM employees e ORDER BY e.firstName;

# MySQL GROUP BY clause
 -- The GROUP BY clause groups a set of rows into a set of summary rows by values
 -- of columns or expressions. The GROUP BY clause returns one row for each group.
 -- In other words, it reduces the number of rows in the result set.
 -- group by clause we get result set in ascending order (ASC) we can change to (desc) at end 
 
 /* You often use the GROUP BY clause with aggregate functions such as SUM, AVG,
 MAX, MIN, and COUNT. The aggregate function that appears in the SELECT clause
 provides information about each group. */

 /* Syntax:
 SELECT c1, c2,..., cn, aggregate_function(ci)
FROM table
WHERE where_conditions
GROUP BY c1 , c2,...,cn; */

/* The GROUP BY clause is often used with an aggregate function to perform calculation and
return a single value for each subgroup. */

SELECT STATUS FROM orders;

SELECT STATUS FROM orders GROUP BY STATUS;

SELECT STATUS,COUNT(*) AS total FROM orders GROUP BY STATUS;

SELECT COUNT(*) AS 'Total orders' FROM orders;

SELECT SUM(quantityInStock) 'Total Quality' FROM products;

SELECT productLine,SUM(quantityInStock) FROM products
 GROUP BY productLine; -- sum all quantityInStock based on productLine

SELECT productLine,MAX(quantityInStock) FROM products
 GROUP BY productLine;  -- find max of quantityInStock based on productLine

SELECT YEAR(orderDate) AS 'YEAR',COUNT(orderNumber) FROM orders 
 GROUP BY YEAR DESC;

SELECT orderNumber,SUM(quantityOrdered * priceEach) AS Total
 FROM orderdetails GROUP BY orderNumber;
 
SELECT city,COUNT(city) FROM customers GROUP BY city;

SELECT productLine,MAX(buyPrice) FROM products GROUP BY productLine;

SELECT jobTitle,COUNT(*) FROM employees WHERE jobtitle='Sales Rep';

# MySQL HAVING clause
 -- The  HAVING clause is used in the SELECT statement to specify filter
 -- conditions for a group of rows or aggregates
 -- The HAVING clause is often used with the GROUP BY clause to filter groups
 -- based on a specified condition.
 /* Syntax :
 SELECT select_list FROM table_name
WHERE search_condition
GROUP BY group_by_expression
HAVING group_condition;  */

SELECT city,COUNT(*) totalCustomers FROM customers GROUP BY city; -- 95 records

SELECT city,COUNT(*) totalCustomers FROM customers 
 GROUP BY city HAVING totalCustomers >=3;  -- 6 records has totalCustomers >=3

SELECT productLine,MAX(buyPrice) maxPrize FROM products GROUP BY
 productLine HAVING maxPrize >=80;


SELECT ordernumber,
    SUM(quantityOrdered) AS itemsCount,
    SUM(priceeach*quantityOrdered) AS total
FROM orderdetails GROUP BY ordernumber
HAVING total > 1000;      


SELECT ordernumber,
    SUM(quantityOrdered) AS itemsCount,
    SUM(priceeach*quantityOrdered) AS total
FROM orderdetails GROUP BY ordernumber
HAVING total > 1000 AND itemsCount > 100;   

#ROLLUP
-- ROLLUP” is a modifier that is used with GROUP BY clause.
-- Mainly, it causes the summary output to include extra rows that
-- represent higher-level summary operations.

SELECT productline,SUM(buyprice) FROM products
 GROUP BY productline WITH ROLLUP;  -- rollup for grand total at end

SELECT city,COUNT(*) totalCustomers FROM customers
 GROUP BY city WITH ROLLUP;

SELECT YEAR(orderDate) AS 'YEAR',COUNT(orderNumber) FROM orders 
 GROUP BY YEAR DESC WITH ROLLUP;

-- Grouping based on Multiple Fields
SELECT YEAR(orderDate) AS 'YEAR',status,COUNT(orderNumber) FROM orders 
 GROUP BY YEAR DESC,STATUS;

SELECT YEAR(orderDate) AS 'YEAR',status,COUNT(orderNumber) FROM orders 
 GROUP BY YEAR DESC,STATUS WITH ROLLUP;

# Scalar Functions
-- MySQL Scalar Functions allow you to perform different calculations
-- on data values.
-- These functions operate on single rows only and produce one result
-- per row.
/* String functions – functions that perform operations on character values.
Numeric functions – functions that perform operations on numeric values.
Date functions – functions that perform operations on date values.
Conversion functions – functions that convert column data types.
NULL-related Functions – functions for handling null values.
*/            

-- String Functions   

SELECT LENGTH('Lenin');

SELECT CONCAT('Magam.','Lenin Sai');

SELECT INSTR('Lenin','n'); -- in-String gives position of char

SELECT LTRIM('  Lenin'); -- remove spaces in left side

SELECT RTRIM('Lenin  ');  -- remove spaces in right side

SELECT TRIM('  Lenin  '); -- remove spaces in left/right side

SELECT SUBSTR('Lenin',2,3); -- Return a part of string 2 index, 3 no of char

SELECT UPPER(customerName),LOWER(city) FROM customers;

SELECT customerName,MID(city,1,3),SUBSTR(city,1,3) FROM customers;

SELECT UPPER(CONCAT(contactFirstName,'.',ContactLastName)) AS 'FullName'
 FROM customers;

SELECT REVERSE('Lenin');

SELECT REPLACE('Lenin','n','v');

-- Date Functions

SELECT NOW();

SELECT CURRENT_DATE;

SELECT SYSDATE(); -- same as now()

SELECT productName,buyprice, NOW() perDate FROM products;

-- DATEDIFF Function calculate the no of days between two dates

SELECT DATEDIFF(CURRENT_DATE,'2021-02-01'); -- difference b/w 2 dates

-- To calculate the number of days between the required date and
-- shipped date of the orders

SELECT orderNumber,DATEDIFF(requiredDate,shippedDate) daysLeft
 FROM orders ORDER BY daysLeft DESC;

-- gets all orders whose statuses are in-process and calculates the number of
-- days between ordered date and required date

SELECT orderNumber,DATEDIFF(requiredDate,orderDate) remainingDays
 FROM orders where STATUS='in Process' ORDER BY remainingDays;

-- The DAY() function returns the day of the month of a given date

SELECT DAY(NOW()); -- Day of month
SELECT DAYOFMONTH(NOW()); -- day of month

SELECT LAST_DAY(NOW()); -- in that month last date will display

SELECT DATEDIFF(LAST_DAY(NOW()),NOW()); --days left in this months

SELECT DAY(orderDate) DAYOFMONTH,COUNT(*) count FROM orders
 WHERE YEAR(orderDate) = 2004  GROUP BY DAYOFMONTH;

SELECT DAYNAME(NOW()) , WEEKDAY(NOW()); -- name of day, week no (mon-0 - sun-6)

-- Numeric Functions

-- The ABS() function is a mathematical function that returns the absolute (positive)
-- value of a number.

SELECT ABS(-10),ABS(0),ABS(10),ABS(-9+4);

SELECT buyPrice-MSRP, ABS(buyPrice-MSRP) FROM products;

-- The ROUND() is a mathematical function that allows you to round a number to a specified
-- number of decimal places.

SELECT ROUND(20.1),ROUND(20.5),ROUND(20.7);

SELECT ROUND(5.567,2); -- roundOf to 2 digits

-- The number of decimal places ( d) can be positive or negative.
-- If it is negative, then the d digits left of the decimal point of the number n becomes zero.

SELECT ROUND(121,-2),ROUND(2113.56,-3); -- in 121 last 2 digits will be zero

SELECT productCode,AVG(quantityOrdered * priceEach) average_item_value
 FROM orderdetails GROUP BY productCode;

SELECT productCode,ROUND(AVG(quantityOrdered * priceEach)) average_item_value
 FROM orderdetails GROUP BY productCode;

-- ceil() & floor()

-- The CEIL() function takes an input number and returns 
-- the smallest integer greater than or equal to that number.
 
-- FLOOR() -Returns the largest integer value not greater than the argument

SELECT FLOOR(20.1),FLOOR(20.5),FLOOR(20.8);

SELECT CEIL(20.1),CEIL(20.5),CEIL(20.8);

SELECT productLine ,CEIL(AVG(MSRP)) averageMSRP
 FROM products GROUP BY productLine;

# Conversion Functions

-- FORMAT() -- Converts number in to a String
-- DATE_FORMAT() -Converts DATE  in to a String
-- CONVERT() converting string to number

SELECT DATE_FORMAT(NOW(),'%Y %M %D'); -- formating date

SELECT FORMAT(1002343,2), FORMAT(1002343.234,2);

SELECT CONVERT('100',UNSIGNED INTEGER),CONVERT('-100',SIGNED INTEGER);

SELECT CONVERT('2021-02-04',DATE),CONVERT('08:45:55',TIME);

# NULL Related Functions
-- IFNULL()  - Return the specified value IF the expression is NULL,
-- otherwise return the expression

SELECT customerName,city,state FROM customers;

SELECT customerName,city,IFNULL(state,'KA') FROM customers;

SELECT AVG(buyPrice) FROM products;

SELECT AVG(IFNULL(buyPrice,0)) FROM products;




