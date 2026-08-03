USE EmployeeManagementDB;

-- ==========================================
-- Question 1
-- Display the first 5 employees
-- ==========================================

SELECT TOP 5 EmployeeID, FirstName, LastName, DepartmentID, Salary, DateOfBirth
FROM Employees;

-- ==========================================
-- Question 2
-- Display the top 10 highest-paid employees
-- ==========================================

SELECT TOP 10 *
FROM Employees
ORDER BY Salary DESC;

-- ==========================================
-- Question 3
-- Display the top 3 youngest employees
-- ==========================================

SELECT TOP 3 *
FROM Employees
ORDER BY DateOfBirth DESC;