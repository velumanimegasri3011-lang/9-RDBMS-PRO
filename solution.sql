-- Create Department table
CREATE TABLE Department (
    DepartmentID NUMBER(5),
    DepartmentName VARCHAR2(50)
);

-- Insert Department records
INSERT INTO Department VALUES (101, 'Computer Science');
INSERT INTO Department VALUES (102, 'Mathematics');
INSERT INTO Department VALUES (103, 'Physics');

-- Create Student table
CREATE TABLE Student (
    StudentID NUMBER(5),
    StudentName VARCHAR2(30),
    DepartmentID NUMBER(5)
);

-- Insert Student records
INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);
INSERT INTO Student VALUES (1004, 'Nisha', 103);

-- INNER JOIN to display Student Name with Department Name
SELECT Student.StudentName, Department.DepartmentName
FROM Student
INNER JOIN Department
ON Student.DepartmentID = Department.DepartmentID;
