DROP TABLE auto;
CREATE TABLE auto(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    course VARCHAR(20)
);
INSERT INTO auto(name,course) VALUES('Kamalika','ECE');
INSERT INTO auto(name,course) VALUES('Rumi','BE');
INSERT INTO auto(name,course) VALUES('Jhumi','BSc');
SELECT * FROM auto;
