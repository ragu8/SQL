-- The CREATE TABLE statement is used to create a new table in a database.
-- Syntax
/*CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);*/

CREATE TABLE Std (
    Roll_number int(10),
    Name varchar(255),
    phone_number int(10),
    Address varchar(255),
    e_mail varchar(255)
);


-- A copy of an existing table can also be created using CREATE TABLE.
-- Syntax

/*CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;*/
    
CREATE TABLE friends AS
SELECT Roll_number , Name
FROM std;
    
    
-- VIEWING THE TABLES 
SHOW TABLES
 
 
-- The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
-- Syntax
-- TRUNCATE TABLE table_name;

TRUNCATE TABLE FRIENDS;
 
 
-- The DROP TABLE statement is used to drop an existing table in a database.
-- Syntax

-- DROP TABLE table_name;
DROP TABLE STD


