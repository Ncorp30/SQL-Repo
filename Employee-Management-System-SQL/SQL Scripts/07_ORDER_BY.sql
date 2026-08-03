USE EmployeeManagementDB;

-- ==========================================
-- Question 1
-- Display all employees sorted by salary
-- from lowest to highest
-- ==========================================

SELECT *
FROM Employees
ORDER BY Salary ASC;

-- ==========================================
-- Question 2
-- Display all employees sorted by salary
-- from highest to lowest
-- ==========================================

SELECT *
FROM Employees
ORDER BY Salary DESC;

-- ==========================================
-- Question 3
-- Display all employees sorted alphabetically
-- by First Name (A to Z)
-- ==========================================

SELECT *
FROM Employees
ORDER BY FirstName ASC;

-- ==========================================
-- Question 4
-- Display all employees sorted by City (Ascending).
-- If employees belong to the same city,
-- sort them by Salary (Descending).
-- ==========================================

SELECT *
FROM Employees
ORDER BY City ASC,
         Salary DESC;

-- ==========================================
-- Question 5
-- Display all employees sorted by DepartmentID
-- (Ascending). Within each department, sort
-- employees by HireDate (Newest to Oldest).
-- ==========================================

SELECT *
FROM Employees
ORDER BY DepartmentID ASC,
         HireDate DESC;