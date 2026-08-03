USE EmployeeManagementDB;

-- ==========================================
-- Question 1(Group by)
-- Display the total number of employees
-- in each department
-- ==========================================

CREATE INDEX IX_Employees_DepartmentID
ON Employees (DepartmentID);

SELECT DepartmentID,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID;

-- ==========================================
-- Question 2(Group by)
-- Display the total salary paid in each
-- department
-- ==========================================

SELECT DepartmentID,
       SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID;

-- ==========================================
-- Question 3(Group by)
-- Display the average salary of employees
-- in each department
-- ==========================================

SELECT DepartmentID,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentID;

-- ==========================================
-- Question 4(Group by)
-- Display the highest salary in each
-- department
-- ==========================================

SELECT DepartmentID,
       MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY DepartmentID;

-- ==========================================
-- Question 5(Group by)
-- Display the lowest salary in each
-- department
-- ==========================================

SELECT DepartmentID,
       MIN(Salary) AS MinSalary
FROM Employees
GROUP BY DepartmentID;