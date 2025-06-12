create table studentList(
	rollno int primary key,
    name varchar(50)
);

create table course(
	id int primary key,
    courseName varchar(50)
);

insert into studentList
(rollno, name)
values
(11, "payal"),
(12, "krutika"),
(13, "kashvi"),
(14, "harshi"),
(15, "bacchu"),
(16, "sherlock");

insert into course
(id, courseName)
values
(11, "englis"),
(12, "computer"),
(22, "science"),
(14, "hindi"),
(24, "sst"),
(16, "moralScience");

SELECT * 
FROM studentList 
INNER JOIN course
ON studentList.rollno = course.id;

SELECT * 
FROM studentList 
LEFT JOIN course
ON studentList.rollno = course.id
UNION
SELECT * 
FROM studentList 
RIGHT JOIN course
ON studentList.rollno = course.id;


SELECT * 
FROM studentList 
LEFT JOIN course
ON studentList.rollno = course.id
WHERE course.id IS NULL;


SELECT * 
FROM studentList 
LEFT JOIN course
ON studentList.rollno = course.id
WHERE course.id IS NULL
UNION
SELECT * 
FROM studentList 
RIGHT JOIN course
ON studentList.rollno = course.id
WHERE studentList.rollno IS NULL;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR (54),
manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
values
(101, "adam", 103),
(102, "sophia", 104),
(103, "lana", NULL),
(104, "cathey", 103);

drop table employee;

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;