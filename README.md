# Student and Department – INNER JOIN

## Objective

Create `Department` and `Student` tables, insert the given sample records, and perform an INNER JOIN to display the Student Name and Department Name.

## Department Table

| DepartmentID | DepartmentName |
|--------------|----------------|
| 101 | Computer Science |
| 102 | Mathematics |
| 103 | Physics |

## Student Table

| StudentID | StudentName | DepartmentID |
|-----------|-------------|--------------|
| 1001 | Arun | 101 |
| 1002 | Divya | 102 |
| 1003 | Karthik | 101 |
| 1004 | Nisha | 103 |

## Task

1. Create the `Department` table.
2. Create the `Student` table.
3. Insert the given sample records.
4. Perform an INNER JOIN between `Student` and `Department`.
5. Display:
   - Student Name
   - Department Name

## Expected Query Result

| StudentName | DepartmentName |
|--------------|----------------|
| Arun | Computer Science |
| Divya | Mathematics |
| Karthik | Computer Science |
| Nisha | Physics |
