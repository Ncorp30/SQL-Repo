USE EmployeeManagementDB;

-- ==========================================
-- Question 1(Having)
-- Display departments having more than
-- 5 employees
-- ==========================================

SELECT DepartmentID,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 5;

-- ==========================================
-- Question 2
-- Display departments whose average salary
-- is greater than 60000
-- ==========================================

SELECT DepartmentID,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) > 60000;

-- ==========================================
-- Question 2(Having)
-- Display departments whose average salary
-- is greater than 60000
-- ==========================================

SELECT DepartmentID,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) > 60000;

-- ==========================================
-- Question 3(Having)
-- Display departments whose total salary
-- is greater than 200000
-- ==========================================

SELECT DepartmentID,
       SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID
HAVING SUM(Salary) > 200000;