-- SQL constraints are used to specify rules for the data in a table.
-- The following constraints are commonly used in SQL:

/*
    NOT NULL - Ensures that a column cannot have a NULL value
    UNIQUE - Ensures that all values in a column are different
    PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
    FOREIGN KEY - Prevents actions that would destroy links between tables
    CHECK - Ensures that the values in a column satisfies a specific condition
    DEFAULT - Sets a default value for a column if no value is specified
    CREATE INDEX - Used to create and retrieve data from the database very quickly
*/

-- The NOT NULL constraint enforces a column to NOT accept NULL values.
-- SYNTAX

CREATE TABLE CUST (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
); 


-- The UNIQUE constraint ensures that all values in a column are different.
-- SYNTAX

CREATE TABLE CUST (
	ID INT NOT NULL UNIQUE,
    LASTNAME VARCHAR(255) NOT NULL,
    FIRSTNAME VARCHAR(255)UNIQUE,
    AGE INT
    );
 
 
-- To create a UNIQUE constraint on the "ID" column when the table is already created, use the following SQL:

ALTER TABLE CUST
ADD UNIQUE (ID);


-- The PRIMARY KEY constraint uniquely identifies each record in a table.

CREATE TABLE CUST (
	ID INT NOT NULL,
    LASTNAME VARCHAR(255) NOT NULL,
    FIRSTNAME VARCHAR(255)UNIQUE,
    AGE INT,
    PRIMARY KEY(ID)
    );
    
    
-- To create a PRIMARY KEY constraint on the "ID" column when the table is already created, use the following SQL:

ALTER TABLE CUST
ADD PRIMARY KEY (ID)


-- To drop a PRIMARY KEY constraint, use the following SQL:

ALTER TABLE CUST
DROP PRIMARY KEY;


-- The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (CUSTID) REFERENCES CUST(CUSTID)
);


-- To create a FOREIGN KEY constraint on the "PersonID" column when the "Orders" table is already created, use the following SQL:

ALTER TABLE Orders
ADD FOREIGN KEY (CUSTID) REFERENCES CUST(CUSTID);


-- To drop a FOREIGN KEY constraint, use the following SQL:

ALTER TABLE Orders
DROP FOREIGN KEY; 


-- The CHECK constraint is used to limit the value range that can be placed in a column.

CREATE TABLE CUST (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
); 


-- To create a CHECK constraint on the "Age" column when the table is already created, use the following SQL:

ALTER TABLE CUST
ADD CHECK (Age>=18);


-- To drop a CHECK constraint, use the following SQL:

ALTER TABLE CUST
DROP CHECK CHK_CUSTAge; 


-- The DEFAULT constraint is used to set a default value for a column.

CREATE TABLE CUST (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'HOSUR'
); 


-- The DEFAULT constraint can also be used to insert system values, by using functions like GETDATE():

CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber VARCHAR(255) DEFAULT GET DATA (),
    OrderDate DATE
); 

 
-- To create a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:

ALTER TABLE CUST
ALTER City SET DEFAULT 'HOSUR';


-- To drop a DEFAULT constraint, use the following SQL:

ALTER TABLE CUST
ALTER City DROP DEFAULT;  


-- The CREATE INDEX statement is used to create indexes in tables.
-- SYNTAX

/* 
CREATE INDEX index_name
ON table_name (column1, column2, ...); 
*/

CREATE INDEX idx_lastname
ON CUST (LastName);


-- Creates a unique index on a table. Duplicate values are not allowed:
-- SYNTAX

/*
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);
*/

CREATE UNIQUE INDEX idx_lastname
ON CUST (LastName);


-- The DROP INDEX statement is used to delete an index in a table.
-- SYNTAX

/* 
ALTER TABLE table_name
DROP INDEX index_name;
*/

ALTER TABLE CUST
DROP INDEX idx_lastname;