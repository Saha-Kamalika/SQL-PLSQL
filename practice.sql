CREATE DATABASE emp;
USE emp;

CREATE TABLE emp(
	id INT,
    name VARCHAR(20),
    email VARCHAR(50),
    department VARCHAR(10),
    salary INT,
    dob DATE,
    gender VARCHAR(1));
    
INSERT INTO emp VALUES (1,"Karan Mehta","Karan@gmail.com","HR",300000,'1998/05/10','M'),(2,"Rohit Sharma","Rohit@gmail.com","Admin",75000,'1997/01/25','M'),(3,"Ankush Rajput","Ankush@gmail.com","Account",60000,'1998/02/09','M'),(4,"Priyanshi Sharma","Priyanshi@gmail.com","HR",500000,'1998/06/15','F'),(5,"Sanket Gupta","Sanket@gmail.com","Developer",100000,'1997/05/07','M'),(6,"Shruti Kapoor","Shruti@gmail.com","Admin",80000,'1995/11/26','F'),(7,"Rohit Sharma","Rohit@gmail.com","Admin",75000,'1996/12/11','M'),(8,"Sanket Gupta","Sanket@gmail.com","Developer",100000,'1997/05/07','M'),(9,"Geet Gour","Geet@gmail.com","Tester",17000,'1998/07/03','F');
#delete duplicate records
SET SQL_SAFE_UPDATES=0;
DELETE e1 FROM emp e1,emp e2
WHERE e1.email=e2.email
AND e1.id>e2.id;
SELECT * from emp;

#retrieve first 4 char of employee name
SELECT id,SUBSTRING(name,1,4) FROM emp;

#no of emp whose dob betweeen 01/06.1995 to 30/06.1998 and are groouped acc to gender
SELECT gender,count(id) as count
FROM emp
WHERE dob BETWEEN '1995.06.01' AND '1998.06.30'
GROUP BY gender;

#fetch all ordered by department in asc and salary in desc
SELECT * FROM emp
ORDER BY department,salary DESC;

#fetcg all excluding HR and admin
SELECT * FROM emp
WHERE department NOT IN("HR","Admin");

TRUNCATE TABLE emp;
#fetch 50% records
SELECT * FROM emp
WHERE id <=(SELECT COUNT(*)/2 FROM emp);

#display records after incrementing salary by 10%
SELECT id,name,salary+(salary/10) AS total_salary
FROM emp;

#retrieve 2 min and 2 max salary
SELECT distinct(salary) from emp e1
WHERE 2>=(SELECT COUNT(DISTINCT(salary)) FROM emp e2 WHERE e1.salary>=e2.salary) ORDER BY salary; #2 min

SELECT distinct(salary) from emp e1
WHERE 2>=(SELECT COUNT(DISTINCT(salary)) FROM emp e2 WHERE e1.salary<=e2.salary) ORDER BY salary; #2max

#replace emp name space by -
SELECT REPLACE(name,' ','-') FROM emp;


CREATE DATABASE TCS;
USE TCS;
DROP TABLE employeeInfo;
CREATE TABLE EmployeeInfo(
	EmpId INT,
    EmpFname VARCHAR(20),
    EmpLname VARCHAR(20),
    Department VARCHAR(20),
    Salary INT);
    
INSERT INTO EmployeeInfo VALUES(1,"Karan","Mehta","HR",300000),(2,"Rohit","Sharma","Admin",75000),(3,"Ankush","Rajput","Account",60000),(4,"Priyanshi","Sharma","HR",500000),(5,"Sanket","Gupta","Developer",100000),(6,"Shruti","Kapoor","Admin",80000),(2,"Rohit","Sharma","Admin",75000);
SELECT * FROM employeeInfo;

#ind the 3rd highest salary from table
SELECT Salary
FROM EmployeeInfo
ORDER BY Salary DESC
LIMIT 2,1; #after 2nd row select 1 row

#find Nth highest salary from table without using top/limit
SELECT Salary
FROM employeeinfo e1
WHERE 2=(SELECT COUNT(distinct salary) FROM employeeinfo e2 WHERE e2.salary>e1.salary);

#find duplicate rows in the table
SELECT empid,COUNT(empid)
FROM employeeinfo
GROUP BY empid
HAVING COUNT(empid)>1;

#find even and odd records
SELECT * 
FROM employeeinfo
WHERE MOD(empid,2)=0;

SELECT * 
FROM employeeinfo
WHERE MOD(empid,2)=1;

#find first and last record
SELECT *
FROM employeeinfo
WHERE empid=(SELECT MIN(empid) FROM employeeinfo);

SELECT *
FROM employeeinfo
WHERE empid=(SELECT Max(empid) FROM employeeinfo);

#copy all records of the table
CREATE TABLE Dupli AS SELECT * FROM employeeinfo; 
CREATE TABLE Dupli1 AS SELECT * FROM employeeinfo WHERE 1=2;

#retrive list of employees working in same dept
SELECT e.empid,e.empfname,e.emplname,e.department
FROM employeeinfo e,employeeinfo e1
WHERE e.department=e1.department AND e.empid <> e1.empid;

#retrieve last 3 records from table

SELECT * FROM(SELECT * FROM Employeeinfo ORDER BY Empid DESC LIMIT 3) temp ORDER BY empid ASC;

SELECT * FROM employeeinfo
ORDER By empid DESC
LIMIT 3;

#fetch details of emps whose last name ends with a and contains 5 alphabets
SELECT * FROM Employeeinfo
WHERE emplname LIKE '____a';
