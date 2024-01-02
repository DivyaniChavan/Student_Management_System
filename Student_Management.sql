create database Student_Management;
show databases;
use Student_Management;
-- Creating Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudName VARCHAR(255),
    Email VARCHAR(255),
    DateOfBirth DATE
);

-- Creating Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255)
);

-- Creating Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Creating Instructor Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    StaffName VARCHAR(255),
    Email VARCHAR(255)
);

-- Creating Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255),
    HeadOfDepartment VARCHAR(255)
);

