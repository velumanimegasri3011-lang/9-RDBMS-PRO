USE CollegeDB;

-- Check Department table
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: Department table exists'
        ELSE 'FAIL: Department table missing'
    END AS Test_Result
FROM information_schema.tables
WHERE table_schema = 'CollegeDB'
  AND table_name = 'Department';


-- Check Student table
SELECT
    CASE
        WHEN COUNT(*) = 1 THEN 'PASS: Student table exists'
        ELSE 'FAIL: Student table missing'
    END AS Test_Result
FROM information_schema.tables
WHERE table_schema = 'CollegeDB'
  AND table_name = 'Student';


-- Check Department record count
SELECT
    CASE
        WHEN COUNT(*) = 3 THEN 'PASS: 3 Department records'
        ELSE 'FAIL: Department record count incorrect'
    END AS Test_Result
FROM Department;


-- Check Student record count
SELECT
    CASE
        WHEN COUNT(*) = 4 THEN 'PASS: 4 Student records'
        ELSE 'FAIL: Student record count incorrect'
    END AS Test_Result
FROM Student;


-- Check Department values
SELECT
    CASE
        WHEN
            (SELECT DepartmentName FROM Department WHERE DepartmentID = 101) = 'Computer Science'
            AND
            (SELECT DepartmentName FROM Department WHERE DepartmentID = 102) = 'Mathematics'
            AND
            (SELECT DepartmentName FROM Department WHERE DepartmentID = 103) = 'Physics'
        THEN 'PASS: Department data correct'
        ELSE 'FAIL: Department data incorrect'
    END AS Test_Result;


-- Check Student values
SELECT
    CASE
        WHEN
            (SELECT StudentName FROM Student WHERE StudentID = 1001) = 'Arun'
            AND
            (SELECT DepartmentID FROM Student WHERE StudentID = 1001) = 101
            AND
            (SELECT StudentName FROM Student WHERE StudentID = 1002) = 'Divya'
            AND
            (SELECT DepartmentID FROM Student WHERE StudentID = 1002) = 102
            AND
            (SELECT StudentName FROM Student WHERE StudentID = 1003) = 'Karthik'
            AND
            (SELECT DepartmentID FROM Student WHERE StudentID = 1003) = 101
            AND
            (SELECT StudentName FROM Student WHERE StudentID = 1004) = 'Nisha'
            AND
            (SELECT DepartmentID FROM Student WHERE StudentID = 1004) = 103
        THEN 'PASS: Student data correct'
        ELSE 'FAIL: Student data incorrect'
    END AS Test_Result;


-- Check INNER JOIN result
SELECT
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM Student s
            INNER JOIN Department d
                ON s.DepartmentID = d.DepartmentID
        ) = 4
        THEN 'PASS: INNER JOIN returned 4 records'
        ELSE 'FAIL: INNER JOIN result incorrect'
    END AS Test_Result;


-- Display expected JOIN result
SELECT
    s.StudentName,
    d.DepartmentName
FROM Student s
INNER JOIN Department d
    ON s.DepartmentID = d.DepartmentID
ORDER BY s.StudentID;
