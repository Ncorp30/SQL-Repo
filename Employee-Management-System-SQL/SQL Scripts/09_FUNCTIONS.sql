USE EmployeeManagementDB;

-- ==========================================
-- Question 1 (CONCAT)
-- Display Employee ID and Full Name
-- ==========================================

SELECT EmployeeID,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;

-- ==========================================
-- Question 2 (UPPER)
-- Display all employee first names in uppercase
-- ==========================================

SELECT UPPER(FirstName) AS UpperFirstName
FROM Employees;

-- ==========================================
-- Question 3 (lower)
-- Display all employee email addresses in lowercase
-- ==========================================

SELECT LOWER(Email) AS LowerEmail
FROM Employees;

-- ==========================================
-- Question 4(LEN)
-- Display employee first name and the number
-- of characters in the first name
-- ==========================================

SELECT FirstName,
       LEN(FirstName) AS NameLength
FROM Employees;

-- ==========================================
-- Question 5(TRIM)
-- Display employee first name after removing
-- leading and trailing spaces
-- ==========================================

SELECT TRIM(FirstName) AS CleanFirstName
FROM Employees;

-- ==========================================
-- Question 6(REPLACE)
-- Replace the email domain from
-- @technova.com to @company.com
-- ==========================================

SELECT REPLACE(Email, '@technova.com', '@company.com') AS UpdatedEmail
FROM Employees;

-- ==========================================
-- Question 7(COALESCE)
-- Display ManagerID. If ManagerID is NULL,
-- display 0 instead.
-- ==========================================

SELECT COALESCE(ManagerID, 0) AS ManagerIDOrDefault
FROM Employees;

-- ==========================================
-- Question 8(ISNULL)
-- Display ManagerID. If ManagerID is NULL,
-- display 0 using ISNULL()
-- ==========================================

SELECT ISNULL(ManagerID, 0) AS ManagerIDOrDefault
FROM Employees;

-- ==========================================
-- Question 9(FORMAT)
-- Display HireDate in dd-MM-yyyy format
-- ==========================================

SELECT FORMAT(HireDate, 'dd-MM-yyyy') AS FormattedHireDate
FROM Employees;