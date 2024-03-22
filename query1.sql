CREATE database IF NOT EXISTS practice;  /*create database*/
USE practice;   
CREATE TABLE table1(
	id INT,
    name VARCHAR(20)
);    /*create table*/
SELECT * FROM table1;    /*read table info*/

ALTER TABLE table1
RENAME TO info;   /*rename table*/

INSERT INTO table1(id, name) VALUES (1, "Kamalika"), (2, "Srijit"), (3, "Nancy"), (4, "Rahul");

CREATE TABLE dupliTable AS  /*create duplicate table*/
SELECT * FROM table1
WHERE 1<1;   /*assign a false condition to copy only the schema not data*/

SELECT * FROM dupliTable;

/*Temporary Tables are most likely as Permanent Tables. 
Temporary Tables are Created in TempDB and are automatically deleted as soon as the last connection is terminated.
1. Local Temporary Table
2. Global Temporary Table*/

CREATE TEMPORARY TABLE TempTable1( id INT, name VARCHAR(20), age INT);
SELECT * FROM TempTable1;

-- using case
CREATE TABLE myTabul(
	id INT,
    name varchar(20),
    city varchar(10));
INSERT INTO myTabul VALUES (1,"KAMAL","KOLKATA"),(2,"SRIJIT","SINGUR"),(3,"AMI","BEHALA");

SELECT *
FROM myTabul
ORDER BY
CASE 
	WHEN city is null THEN name
    ELSE city
END;

-- adding/removing PK
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE myTabul
ADD PRIMARY KEY(id);
SELECT * FROM myTabul;

ALTER TABLE myTabul
DROP PRIMARY KEY;   -- removing PK 

ALTER TABLE myTabul
ADD CONSTRAINT myPK PRIMARY KEY(id, city);   -- adding a composite key

-- foreign keys
CREATE TABLE myOrders(
	orderID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    ID INT,
    FOREIGN KEY (ID) REFERENCES myTabul(id));
    
SELECT * FROM myOrders;

INSERT INTO myOrders(name,ID) VALUES ("AMI", 3),("SRIJIT",2),("KAMAL",1);

ALTER TABLE myOrders
ADD CONSTRAINT myFK FOREIGN KEY (ID) REFERENCES myTabul(id);

ALTER TABLE myOrders
DROP FOREIGN KEY myFK;
