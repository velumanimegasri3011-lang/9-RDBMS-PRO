-- Student and Department INNER JOIN
-- Complete the SQL program below.

CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

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
-- Write your INSERT statements here.


-- Insert Student records
-- Write your INSERT statements here.


-- Perform INNER JOIN
-- Write your INNER JOIN query here.
