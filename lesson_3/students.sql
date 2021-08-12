-- create table named "students" in the database
CREATE TABLE students (
  id integer PRIMARY KEY, 
  first_name character VARYING(255) not NULL, 
  middle_name character VARYING(255) not NULL, 
  last_name character VARYING(255) not NULL, 
  age integer, 
  location character VARYING(255) NOT NULL
);

--insert 6 records in 'students' table
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (1, 'Juan', 'Tamad', 'Dela Cruz', 20, 'Manila');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (2, 'Pedro', 'Tamed', 'Dela Rosa', 22, 'Manila');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (3, 'Theresa', 'Tamid', 'Delima', 20, 'Bulacan');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (4, 'Anne', 'Tanod', 'Dela Cruz', 20, 'Manila');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (5, 'Finn', 'Tanud', 'Lam', 30, 'Marikina');

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (6, 'Elon', 'Blank', 'Must', 36, 'Bulacan');

--update record with corresponding id
UPDATE students SET first_name='Ivan', middle_name='Ingram', last_name='Howard', age='25', location='Bulacan' WHERE id=1;

--delete last record in 'students' table
DELETE FROM students WHERE id=6;

--Agregate Functions activity 08/10/2021
--Display the count of all `students`
SELECT count(first_name) FROM students;
--Select all students with `location` is `Manila`
SELECT * FROM students WHERE location = 'Manila';
-- Display the average `age` of all `students`
SELECT AVG(age) FROM students;
--Display all `students` by `age` descending order
SELECT * FROM students ORDER BY age DESC;

--DATABASE ADVANCED LESSON
--JOINS

--creates new table classrooms
CREATE TABLE classrooms (id INTEGER PRIMARY KEY, student_id integer, section character VARYING(255) not NULL);
--inserts 10  records in classrooms table
INSERT into classrooms (id, student_id, section)
VALUES (1, 1, 'A');
INSERT into classrooms (id, student_id, section)
VALUES (2, 2, 'A');
INSERT into classrooms (id, student_id, section)
VALUES (3, 3, 'B');
INSERT into classrooms (id, student_id, section)
VALUES (4, 4, 'C');
INSERT into classrooms (id, student_id, section)
VALUES (5, 5, 'B');
INSERT into classrooms (id, student_id, section)
VALUES (6, 6, 'A');
INSERT into classrooms (id, student_id, section)
VALUES (7, 7, 'C');
INSERT into classrooms (id, student_id, section)
VALUES (8, 8, 'B');
INSERT into classrooms (id, student_id, section)
VALUES (9, 9, 'B');
INSERT into classrooms (id, student_id, section)
VALUES (10, 10, 'C');
-- INNER JOIN
SELECT students.first_name, students.last_name, classrooms.section FROM students INNER JOIN classrooms ON students.id = classrooms.student_id;
--LEFT JOIN
SELECT students.id, students.first_name, students.middle_name, students.last_name,students.age,students.location, classrooms.section FROM students LEFT JOIN classrooms ON students.id = classrooms.student_id;
--RIGHT JOIN
SELECT students.first_name, students.last_name,classrooms.id, classrooms.student_id, classrooms.section FROM students RIGHT JOIN classrooms ON students.id = classrooms.student_id;
--FULL JOIN
SELECT * FROM students FULL JOIN classrooms ON students.id = classrooms.student_id;