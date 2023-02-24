DROP TABLE student1;
CREATE TABLE student1(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    major VARCHAR(20) DEFAULT 'UNDECIDED'
    /*PRIMARY KEY(student_id)*/
);
/*ALTER TABLE student1 ADD gpa DECIMAL(3,2);*/
/*ALTER TABLE student1 DROP COLUMN gpa;*/
INSERT INTO student1 VALUES(1, 'Kamalika', 'ECE');
INSERT INTO student1 VALUES(2, 'Srijit', 'ECE');
INSERT INTO student1(student_id, student_name) VALUES(3, 'Akashdeep');
INSERT INTO student1 VALUES(4, 'Rumi','EEE');
SELECT * FROM student1;
