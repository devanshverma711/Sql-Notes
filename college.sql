CREATE DATAbASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks int not null,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO dept(id,name)
VALUES (101,"Adam"),(102,"Eve");

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    foreign key (dept_id) REFERENCES dept(id)
    on update cascade
    on delete cascade
);
INSERT INTO teacher(id,name,dept_id)
VALUES (101,"Adam",101),(102,"Eve",102);

SELECT * from dept;
select * from teacher;

UPDATE dept
SET id = 103
WHERE id =102;

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT name , marks FROM student;
SELECT * from student;
select * from student where marks>80;
SELECT * from student ORDER BY marks DESC;
select max(marks) from student;
select avg(marks) from student;
SELECT city,count(name) from student group by city;

SELECT city,avg(marks) from student group by city order by avg(marks) DESC;

SELECT grade,count(name) from student group by grade;
select city, count(rollno) from student group by city having max(marks)>90;

SET SQL_SAFE_UPDATES=0;

UPDATE student
SET grade ="O"
WHERE grade = "A";

Select * from student;

update student
set marks=82
where rollno = 105;

update student
set grade="B"
where marks BETWEEN 80 AND 90;

Select * from student;

Alter table student
add column age INT NOT NULL default 20;

alter table student
drop column age ;

select names,avg(marks) from student;

select name,marks  from student where marks>87.667;

select name,marks  from student where marks>(select avg(marks) from student);

select name,rollno from student where rollno%2=0;
 

