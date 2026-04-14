CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Table 1: Patients
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200),
    admission_date DATE
);
INSERT INTO Patients VALUES (1,'Suresh',45,'Male','Fever','9876543211','Mysore','2026-04-01');

-- Table 2: Doctors
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    salary DECIMAL(10,2),
    experience INT,
    department VARCHAR(50)
);
INSERT INTO Doctors VALUES (1,'Dr. Mehta','Cardiology','9123456780','mehta@gmail.com',80000,12,'Heart');

-- Table 3: Appointments
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    time TIME,
    status VARCHAR(20),
    remarks VARCHAR(100),
    fee DECIMAL(10,2)
);
INSERT INTO Appointments VALUES (1,1,1,'2026-04-02','10:00:00','Completed','Checkup',500);

-- Table 4: Medicines
CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY,
    name VARCHAR(100),
    manufacturer VARCHAR(100),
    price DECIMAL(10,2),
    expiry_date DATE,
    stock INT,
    category VARCHAR(50),
    dosage VARCHAR(50)
);
INSERT INTO Medicines VALUES (1,'Paracetamol','ABC Pharma',50,'2027-01-01',100,'Tablet','500mg');

-- Table 5: Billing
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    bill_date DATE,
    discount DECIMAL(10,2),
    tax DECIMAL(10,2),
    total DECIMAL(10,2)
);
INSERT INTO Billing VALUES (1,1,1000,'Cash','2026-04-03',50,100,1050);