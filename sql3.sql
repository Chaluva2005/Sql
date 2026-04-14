CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Table 1: Employees
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    designation VARCHAR(50)
);
INSERT INTO Employees VALUES (1,'Anil','IT',50000,'2023-06-01','anil@gmail.com','9876501234','Developer');

-- Table 2: Departments
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    manager VARCHAR(100),
    location VARCHAR(100),
    budget DECIMAL(15,2),
    created_date DATE,
    phone VARCHAR(15),
    email VARCHAR(100)
);
INSERT INTO Departments VALUES (1,'IT','Mr. Kumar','Bangalore',500000,'2020-01-01','9876500000','it@company.com');

-- Table 3: Projects
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(15,2),
    status VARCHAR(50),
    client_name VARCHAR(100),
    manager VARCHAR(100)
);
INSERT INTO Projects VALUES (1,'Website Dev','2025-01-01','2025-06-01',200000,'Completed','ABC Ltd','Anil');

-- Table 4: Attendance
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    date DATE,
    check_in TIME,
    check_out TIME,
    status VARCHAR(20),
    remarks VARCHAR(100),
    work_hours INT
);
INSERT INTO Attendance VALUES (1,1,'2026-04-10','09:00:00','17:00:00','Present','On time',8);

-- Table 5: Payroll
CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deductions DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    pay_date DATE,
    payment_method VARCHAR(50)
);
INSERT INTO Payroll VALUES (1,1,50000,5000,2000,53000,'2026-04-30','Bank Transfer');