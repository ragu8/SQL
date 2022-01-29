/*
SQL Date Data Types

MySQL comes with the following data types for storing a date or a date/time value in the database:

    DATE - format YYYY-MM-DD
    
    DATETIME - format: YYYY-MM-DD HH:MI:SS
    
    TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
    
    YEAR - format YYYY or YY
*/


 -- We use the following SELECT statement:
 
 select * from Orders where orderDate = '2022-01-29'