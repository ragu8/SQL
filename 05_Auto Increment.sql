-- Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
-- Often this is the primary key field that we would like to be created automatically every time a new record is inserted.
-- SYNTAX

CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);


-- To let the AUTO_INCREMENT sequence start with another value, use the following SQL statement:

ALTER TABLE PERSONS auto_increment = 100;

-- To insert a new record into the "Persons" table, we will NOT have to specify a value for the "Personid" column (a unique value will be added automatically):

INSERT INTO PERSONS (FirstName,LastName) VALUES ('RAGU','M')