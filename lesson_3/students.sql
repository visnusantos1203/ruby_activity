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
select AVG(age) from students;
--Display all `students` by `age` descending order
select AVG(age) from students ORDER BY age DESC;