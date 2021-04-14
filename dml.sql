# DML Operations
-- insert
-- delete
-- update

-- The INSERT statement allows you to insert one or more rows into a table. The following illustrates the syntax of the INSERT statement:
 
/*INSERT INTO table(c1,c2,...)
VALUES (v1,v2,...); */

DESC departments;

-- Insert demo without specifying column names

INSERT INTO departments VALUES(100,'Technical');

INSERT INTO departments VALUES(101,'Sales');

INSERT INTO departments VALUES(102,'Hr');

INSERT INTO departments VALUES(103,'Production');

INSERT INTO departments VALUES(104,'Travel');

SELECT * FROM departments;

-- Insert demo Specifying column names

DESC user;

INSERT INTO user(id,NAME,email) VALUES (100,'Mike','mike@training.com');

INSERT INTO user(NAME,email) VALUES ('jack','jack@training.com');

INSERT INTO user(NAME,email) VALUES ('mary','mary@training.com');

SELECT * FROM user;

desc employees;

INSERT INTO employees(first_name,last_name,dob,STATUS,description,dept_id)
VALUES('Lenin','Magam','1999-02-04',1,'Testing JDBC',100);

INSERT INTO employees(first_name,last_name,dob,STATUS,description,dept_id)
VALUES('charan','Magam','1998-10-21',1,'Testing JDBC',101);

INSERT INTO employees(first_name,last_name,dob,STATUS,description,dept_id)
VALUES('john','robert','1995-04-02',1,'Testing JDBC',102);


SELECT * FROM employees;

DESC people;

INSERT INTO people(last_name,m_name,first_name,birthday,salary,phone,gender)
VALUES('Gosling','Java','James','1970-05-19',3000.50,987654391,'male');

-- gender check constraint (will get error gender should be male/female) 
-- mentioned while creating table

INSERT INTO people(last_name,m_name,first_name,birthday,salary,phone,gender)
VALUES('Gosling','Java','James','1970-05-19',3000.50,98705391,'jk');

-- salary check constraint (Will get error salary should be greater than 10000)
-- mentioned while creating table

INSERT INTO people(last_name,m_name,first_name,birthday,salary,phone,gender)
VALUES('Gosling','Java','James','1970-05-19',300,984391,'male');

-- unique constraint (will get error phone number should e unique )
-- mentioned while creating table

INSERT INTO people(last_name,m_name,first_name,birthday,salary,phone,gender)
VALUES('Gosling','Java','James','1970-05-19',5000.50,987654391,'male');

SELECT * FROM people;

/*
The UPDATE statement updates data in a table. 
It allows you to change the values in one or more columns of a single row or multiple rows.
 
 syntax of the UPDATE statement:
 
UPDATE  table_name 
SET 
    column_name1 = expr1,
    column_name2 = expr2,
    ...
[WHERE
    condition];
*/

UPDATE user SET email='jack123@training.com' WHERE id=101;

SELECT * FROM user;

UPDATE user SET NAME='Mary Keneth', email='mary123@training.com' WHERE id=102;

USE classicmodels;

-- Using MySQL UPDATE to update rows returned by a SELECT statement example using subquery
 
SELECT customername,salesRepEmployeeNumber
FROM customers
WHERE salesRepEmployeeNumber IS NULL;

SELECT employeeNumber FROM employees
WHERE jobtitle = 'Sales Rep' ORDER BY RAND() LIMIT 1;


UPDATE customers SET salesRepEmployeeNumber =
(SELECT employeeNumber FROM employees
WHERE jobtitle = 'Sales Rep' ORDER BY RAND() LIMIT 1
) WHERE salesRepEmployeeNumber IS NULL;


# DELETE statement
 /*To delete data from a table, you use the MySQL DELETE statement. 
 syntax of the DELETE statement:
 
DELETE FROM table_name
WHERE condition;  */

SELECT * FROM employees_copy;

DELETE FROM employees_copy WHERE officeCode=4;

-- delete from employees_copy; -- delete all rows

DELETE FROM customers_copy ORDER BY customerName LIMIT 10;

DELETE FROM customers_copy WHERE country ='France'
 ORDER BY creditLimit LIMIT 5;

#Truncate
/* MYSQL TRUNCATE statement removes the complete data without 
removing its structure.
-- DDL Command
The TRUNCATE TABLE statement is used when you want to delete the complete data from a 
table without removing the table structure. */

TRUNCATE TABLE customers_copy;

SELECT * FROM customers_copy;










