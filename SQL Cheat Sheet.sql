SQL Cheat Sheet

Basics - SELECT, INSERT, UPDATE, DELETE, COUNT, DISTINCT, LIMIT

------------------------------------------------------------------
SELECT
SELECT statement is used to fetch data from a database.

Syntax:
SELECT column1, column2, ... FROM table_name; 

Example:
SELECT city FROM placeofinterest;
-------------------------------------------------------------------

WHERE
WHERE clause is used to extract only those records that fulfill a specified condition.

Syntax:
SELECT column1, column2, ...FROM table_name WHERE condition;

Example:
SELECT * FROM placeofinterest WHERE city = 'Rome' ;

-------------------------------------------------------------------

COUNT
COUNT is a function that takes the name of a column as argument and counts the number of rows when the column is not NULL

Syntax:
SELECT COUNT * FROM table_name ; 

Example:
SELECT COUNT(country) FROM placeofinterest WHERE country='Canada';

-------------------------------------------------------------------

DISTINCT
DISTINCT function is used to specify that the statement is a query which returns unique values in specified columns.

Syntax:
SELECT DISTINCT columnname FROM table_name;

Example:
SELECT DISTINCT country FROM placeofinterest WHERE type='historical';

-------------------------------------------------------------------

LIMIT
LIMIT is a clause to specify the maximum number of rows the result set must have.

Syntax:
SELECT * FROM table_name LIMIT number;

Example:
SELECT * FROM placeofinterest WHERE airport="pearson" LIMIT 5;

--------------------------------------------------------------------

INSERT
INSERT is used to insert new rows in the table.

Syntax:
INSERT INTO table_name (column1,column2,column3...) VALUES(value1,value2,value3...); 

Example:
INSERT INTO placeofinterest (name,type,city,country,airport) VALUES('Niagara Waterfalls','Nature','Toronto','Canada','Pearson');


--------------------------------------------------------------------

UPDATE
UPDATE used to update the rows in the table.

Syntax:
UPDATE table_name SET[[column1]=[VALUES]] WHERE [condition];

Example:
UPDATE placeofinterest SET name = 'Niagara Falls' WHERE name = "Niagara Waterfalls";

--------------------------------------------------------------------

DELETE
DELETE statement is used to remove rows from the table which are specified in the WHERE condition.

Syntax:
DELETE FROM table_name WHERE [condition]; 

Example:
DELETE FROM placeofinterest WHERE city IN ('Rome','Vienna');


