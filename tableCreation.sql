create database college;
use college;

create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade_cgpa varchar(2),
    city varchar(20)
);

insert into student
(rollno, name, marks, grade_cgpa, city)
values
(11, "payal", 90, "A", "Nagpur"),
(12, "krutika", 84, "B", "dharavi"),
(13, "kashvi", 64, "c", "Mumbai"),
(14, "harshi", 95, "A", "delhi"),
(15, "bacchu", 89, "B", "delhi"),
(16, "sherlock", 48, "d", "lucknow");

SELECT * FROM student;
SELECT rollno, name FROM student;
SELECT distinct city FROM student;
SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE marks > 80 AND city = "mumbai";
SELECT * FROM student WHERE marks > 80 OR city = "mumbai";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Delhi" , "Mumbai");
SELECT * FROM student WHERE city NOT IN ("Delhi" , "Mumbai");
SELECT * FROM student LIMIT 3;
SELECT marks, name FROM student LIMIT 3;
SELECT * FROM student ORDER BY city ASC;
SELECT max(marks) FROM student;
SELECT city, COUNT(name) FROM student GROUP BY city;	

SET SQL_SAFE_UPDATES = 0;  
UPDATE student
SET grade_cgpa = "A"
WHERE grade_cgpa = "O";

UPDATE student set marks = marks + 1;
DELETE FROM student WHERE marks < 30;

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR (50)
);
CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR (50),
    dept_id INT,
    FOREIGN KEY (dept_id) references dept(id)
); 

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE stu_name
RENAME To student;

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student
MODIFY column age VARCHAR(2);

TRUNCATE TABLE student;

SELECT * FROM student;

ALTER TABLE student
CHANGE name full_name varchar(50);

DELETE FROM student WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade_cgpa;

DROP TABLE student;

SELECT name, rollno 
 FROM student
 WHERE rollno IN (
    SELECT rollno 
    FROM student
    WHERE rollno % 2 = 0);
    
    
CREATE VIEW view1 AS
SELECT rollno, name FROM student;

SELECT * FROM view1;