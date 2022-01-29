/*
SQL CREATE VIEW Statement

In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

A view is created with the CREATE VIEW statement. 
*/


-- SYNTAX

/*
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/

-- CREATE VIEW

CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil'; 

-- VIEW

select * FROM ['Brazil Customer'];


-- example

CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products); 

SELECT * FROM [Products Above Average Price];

/*
SQL Updating a View

A view can be updated with the CREATE OR REPLACE VIEW statement. 
*/

-- SQL CREATE OR REPLACE VIEW Syntax

/*
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/

-- example

CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';


/*
SQL Dropping a View

A view is deleted with the DROP VIEW statement.
*/

-- SQL DROP VIEW SYNTAX

-- DROP VIEW VIEW_NAME;

-- EXAMPLE

DROP VIEW [BRAZIL CUSTOMERS];









