-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

-- syntax:

/*ALTER TABLE table_name
ADD column_name datatype; */

ALTER TABLE STD
ADD INSTA_ID varchar(255);

select * FROM STD;


-- DROP COLUMN
-- SYNTAX

/*ALTER TABLE table_name
DROP COLUMN column_name;*/

ALTER TABLE STD
DROP COLUMN INSTA_ID; 

select * FROM STD;


-- MODIFY COLUMN
-- SYNTAX

/*  ALTER TABLE table_name
ALTER COLUMN column_name datatype; */

ALTER TABLE STD
MODIFY COLUMN E_MAIL VARCHAR(20);
