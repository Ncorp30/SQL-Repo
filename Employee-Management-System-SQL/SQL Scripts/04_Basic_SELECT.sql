USE EmployeeManagementDB;

-- ==========================================
-- SELECT - Practice 1
-- ==========================================

SELECT EmployeeID,
       FirstName,
       LastName,
       DepartmentID,
       Salary
FROM Employees;

-- ==========================================
-- Question 1
-- Display Employee ID, First Name and Last Name
-- ==========================================

SELECT EmployeeID,
       FirstName,
       LastName
FROM Employees;

-- ==========================================
-- Question 2
-- Display First Name and Salary of all employees
-- ==========================================

SELECT FirstName,
       Salary
FROM Employees;

-- ==========================================
-- Question 3
-- Display Employee ID, First Name, Last Name and Salary
-- ==========================================

SELECT EmployeeID,
       FirstName,
       LastName,
       Salary
FROM Employees;

-- ==========================================
-- Question 4
-- Display all details of all employees
-- ==========================================

SELECT *
FROM Employees;

-- ==========================================
-- Question 5
-- Display the full name of all employees
-- ==========================================

SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;