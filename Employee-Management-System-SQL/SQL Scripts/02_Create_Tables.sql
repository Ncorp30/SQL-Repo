USE EmployeeManagementDB;
GO

-- ==========================================
-- TABLE 1 : Departments
-- ==========================================
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL
);
GO

-- ==========================================
-- TABLE 2 : Employees
-- ==========================================
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    City VARCHAR(50),
    DepartmentID INT NOT NULL,
    ManagerID INT NULL,

    CONSTRAINT CK_Employees_Gender
        CHECK (Gender IN ('Male', 'Female', 'Other')),

    CONSTRAINT CK_Employees_DateOfBirth
        CHECK (DateOfBirth <= GETDATE()),

    CONSTRAINT CK_Employees_HireDate
        CHECK (HireDate >= DateOfBirth),

    CONSTRAINT CK_Employees_Salary
        CHECK (Salary > 0),

    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID),

    CONSTRAINT FK_Employees_Manager
        FOREIGN KEY (ManagerID)
        REFERENCES Employees(EmployeeID)
);
GO

-- ==========================================
-- TABLE 3 : Projects
-- ==========================================
CREATE TABLE Projects
(
    ProjectID INT PRIMARY KEY IDENTITY(1,1),
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NULL,
    Budget DECIMAL(12,2) NOT NULL
);
GO

-- ==========================================
-- TABLE 4 : EmployeeProjects
-- ==========================================
CREATE TABLE EmployeeProjects
(
    EmployeeID INT NOT NULL,
    ProjectID INT NOT NULL,
    AssignedDate DATE NOT NULL,

    PRIMARY KEY (EmployeeID, ProjectID),

    CONSTRAINT FK_EP_Employee
        FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID),

    CONSTRAINT FK_EP_Project
        FOREIGN KEY (ProjectID)
        REFERENCES Projects(ProjectID)
);
GO