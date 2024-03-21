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

