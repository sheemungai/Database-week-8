CREATE DATABASE University;
USE University;

-- Student table
CREATE TABLE Students(
student_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
email  VARCHAR (50) NOT NULL,
course_id INT,
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO Students(name, email, course_id ) VALUES
( "Jaden Smith", "jaden@example.com", 3),
( "Innah Brown","innah@example.com",1),
( "Shila Allan","shila@example.com",2);


-- course table
 
CREATE TABLE courses(
course_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
INSERT INTO courses(name, department_id) VALUES
("Computer Science", 2),
("Software Engineering", 1),
("Information Technology", 3); 

-- department table
CREATE TABLE departments(
department_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
department_code VARCHAR (50) NOT NULL
);
INSERT INTO departments(name,department_code) VALUES
("IT", "IT001"),
("SE", "SE172"),
("CS", "CS123"); 

-- units table
CREATE TABLE units(
unit_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
unit_code VARCHAR (50) NOT NULL
);
INSERT INTO units(name, unit_code) VALUES 
("Data Structure", "DS03"),
("OOP", "OOP1"),
("Programming","PM3");

-- lecture table
CREATE TABLE lecturer(
lecture_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL,
email VARCHAR (50) NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
INSERT INTO lecturer(name, email, department_id ) VALUES
("Keith Big", "keith@example.com", 2),
("Hanna Maria", "hanna@example.com", 3),
("Musa Jeff", "musah@example.com", 1);

-- tutor groups
CREATE TABLE tutor_group(
group_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (50) NOT NULL
);
INSERT INTO tutor_group(name) VALUES
("CS year 1"),
("SE year 3"),
("IT year 2");









