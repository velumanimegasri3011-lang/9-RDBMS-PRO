CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- Create Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(30) NOT NULL
);

-- Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(30) NOT NULL,
    DepartmentID INT NOT NULL
);

-- Insert Department records
INSERT INTO Department
    (DepartmentID, DepartmentName)
VALUES
    (101, 'Computer Science'),
    (102, 'Mathematics'),
    (103, 'Physics');

-- Insert Student records
INSERT INTO Student
    (StudentID, StudentName, DepartmentID)
VALUES
    (1001, 'Arun', 101),
    (1002, 'Divya', 102),
    (1003, 'Karthik', 101),
    (1004, 'Nisha', 103);

-- INNER JOIN
SELECT
    Student.StudentName,
    Department.DepartmentName
FROM Student
INNER JOIN Department
    ON Student.DepartmentID = Department.DepartmentID
ORDER BY Student.StudentID;
