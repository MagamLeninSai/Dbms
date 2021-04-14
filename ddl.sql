CREATE DATABASE training;

USE training;

CREATE TABLE USER(
         id INT PRIMARY KEY AUTO_INCREMENT,
			NAME VARCHAR(25),
			email VARCHAR(25) );

DESCRIBE user; -- displays structure of table
DESC user;

SHOW TABLES;

CREATE TABLE contacts(
          contact_id INT NOT NULL AUTO_INCREMENT,
			 last_name VARCHAR(30) NOT NULL,
			  first_name VARCHAR(25),
			  birthday DATE,
			  CONSTRAINT contacts_pk PRIMARY KEY (contact_id) -- apply primark key at end
			  );
			  
DESC contacts;

# ALTER TABLE
-- The MySQL ALTER TABLE statement is used to add, modify, or drop/delete columns
-- in a table. The MySQL ALTER TABLE statement is also used to rename a table.

/* Syntax:
 ALTER TABLE table_name
  ADD new_column_name column_definition
    [ FIRST | AFTER column_name ];  */

# Add Column in table
ALTER TABLE contacts 
  ADD middle_name VARCHAR(30) NOT NULL 
  AFTER last_name;
    
DESCRIBE contacts;

# Modify Column in a table
ALTER TABLE contacts
   MODIFY middle_name VARCHAR(10) NULL;

DESCRIBE contacts;

# Rename column in table
ALTER TABLE contacts
  CHANGE COLUMN middle_name m_name VARCHAR(20) NULL;
  
DESCRIBE contacts;

# Drop Column in table

ALTER TABLE contacts 
  ADD contact_type VARCHAR(30) NOT NULL 
  AFTER first_name;
  
ALTER TABLE contacts
  DROP COLUMN contact_type ;
  


DESCRIBE contacts;

# Rename Table

ALTER TABLE contacts
  RENAME TO people;

SHOW TABLES;

-- Add new column to user
ALTER TABLE user
    ADD doj DATE DEFAULT NOW() NOT NULL
    AFTER email;

DESCRIBE user;

-- Creating Foreign key Relationship
/* The foreign key is used to link one or more than one table
together. It is also known as the referencing key.
A foreign key matches the primary key field of another table.
It means a foreign key field in one table refers to the primary key
field of the other table. */

/*
Syntax: [CONSTRAINT constraint_name]
    FOREIGN KEY [foreign_key_name] (col_name, ...)
    REFERENCES parent_tbl_name (col_name,...)
    ON DELETE referenceOption
    ON UPDATE referenceOption  */

CREATE TABLE departments(   -- primary table
      d_id INT PRIMARY KEY,
      dept_name VARCHAR(15)
		);

SHOW TABLES;

CREATE TABLE employees (       -- secondary table
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    dob        DATE NOT NULL,
    status     TINYINT NOT NULL,
    description TEXT,
    doj TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    dept_id INT NOT NULL,
    CONSTRAINT fk_empDepts FOREIGN KEY(dept_id)
    REFERENCES departments(d_id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
     );

/* CASCADE: It is used when we delete or update any row from the 
parent table, the values of the matching rows in the child table 
will be deleted or updated automatically.
 
RESTRICT: It is used when we delete or update any row from the parent
table that has a matching row in the reference(child) table, 
MySQL does not allow to delete or update rows in the parent table. */

# Check Constraint
-- CHECK constraint to ensure that values stored in a column or group of
-- columns satisfy a Boolean expression.


ALTER TABLE people
    ADD salary DOUBLE(10,2) NOT NULL CHECK(salary>1000)
    AFTER birthday;
   
DESC people;

ALTER TABLE people
    ADD gender CHAR(10) NOT NULL CHECK(gender IN('male','female'))
    AFTER birthday;

/* ALTER TABLE people
    ADD dor DATE  NOT NULL CHECK(dor BETWEEN CURRENT_DATE AND (CURRENT_DATE-'2021-01-01'))
    AFTER birthday; */

-- unique constraint
/* A UNIQUE constraint is an integrity constraint that ensures values in a column or group of columns to be unique.
A UNIQUE constraint can be either a column constraint or a table constraint. */

ALTER TABLE people
 ADD phone INT(11) NOT NULL UNIQUE
    AFTER birthday;

DESC people;