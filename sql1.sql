 CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Table 1: Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    dob DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);
INSERT INTO Students VALUES (1,'Ravi','Kumar','Male','2002-05-10','ravi@gmail.com','9876543210','Bangalore');

-- Table 2: Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50),
    duration INT,
    fees DECIMAL(10,2),
    level VARCHAR(20),
    instructor VARCHAR(100),
    credits INT
);
INSERT INTO Courses VALUES (101,'BCA','CS',3,50000,'UG','Dr. Sharma',6);

-- Table 3: Faculty
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    experience INT,
    designation VARCHAR(50)
);
INSERT INTO Faculty VALUES (1,'Dr. Rao','CS','rao@gmail.com','9123456789',60000,10,'Professor');

-- Table 4: Exams
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    subject VARCHAR(100),
    date DATE,
    max_marks INT,
    min_marks INT,
    duration INT,
    exam_type VARCHAR(50),
    course_id INT
);
INSERT INTO Exams VALUES (1,'Java','2026-05-10',100,35,3,'Final',101);

-- Table 5: Results
CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    student_id INT,
    exam_id INT,
    marks INT,
    grade VARCHAR(5),
    status VARCHAR(10),
    remarks VARCHAR(100),
    result_date DATE
);
select * from Students;

INSERT INTO Results VALUES (1,1,1,85,'A','Pass','Good','2026-06-01');
SELECT * FROM Patients;