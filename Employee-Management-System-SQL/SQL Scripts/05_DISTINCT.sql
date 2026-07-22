USE EmployeeManagementDB;

-- ==========================================
-- Question 1
-- Display the list of unique cities
-- ==========================================

SELECT DISTINCT City
FROM Employees;

-- ==========================================
-- Question 2
-- Display the list of unique department IDs
-- ==========================================

SELECT DISTINCT DepartmentID
FROM Employees;

-- ==========================================
-- Question 3
-- Display unique combinations of City and Department ID
-- ==========================================

SELECT DISTINCT City,
                DepartmentID
FROM Employees;