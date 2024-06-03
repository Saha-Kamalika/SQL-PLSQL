CREATE TABLE Employee(
	id INT PRIMARY KEY 
    name VARCHAR(20),
    salary INT);
INSERT INTO employee VALUES (1,"KAMALIKA",10000),(2,"SRIJIT",10000),(3,"YASH",5000),(4,"KANKANA",4000);
SELECT * FROM employee;


ALTER TABLE employee
ADD COLUMN boss VARCHAR(20);

UPDATE employee
SET boss="HARRY" 
WHERE id=1;

UPDATE employee
SET boss="JOSH" 
WHERE id=2;

UPDATE employee
SET boss="HARRY" 
WHERE id=3;

UPDATE employee
SET boss="POPPY" 
WHERE id=4;

/*self join*/
SELECT e.name AS Employee_Name, a.boss AS BOSS
FROM employee e
JOIN employee a
ON e.id = a.id;

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    product VARCHAR(20),
    price INT);
    
INSERT INTO orders VALUES(1,"TV",2000),(2,"OVEN",3000),(3,"FAN",1000);

/*inner join*/
SELECT employee.name, orders.product FROM employee
INNER JOIN orders
ON employee.id=orders.order_id;

/*left join*/
SELECT employee.name, orders.product FROM employee
LEFT JOIN orders
ON employee.id=orders.order_id;

/*right join*/
SELECT employee.name, orders.product FROM employee
RIGHT JOIN orders
ON employee.id=orders.order_id;

/*full join*/
SELECT employee.name, orders.product FROM employee
LEFT JOIN orders
ON employee.id=orders.order_id
UNION
SELECT employee.name, orders.product FROM employee
RIGHT JOIN orders
ON employee.id=orders.order_id;