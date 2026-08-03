USE EmployeeManagementDB;

-- ==========================================
-- Insert Departments
-- ==========================================

BEGIN TRY
    BEGIN TRANSACTION;

INSERT INTO Departments (DepartmentName)
VALUES
('Human Resources'),
('Information Technology'),
('Finance'),
('Sales'),
('Marketing'),
('Operations'),
('Customer Support'),
('Legal'),
('Research & Development'),
('Administration');

-- ==========================================
-- Insert Employees (Batch 1)
-- ==========================================

INSERT INTO Employees
(
    FirstName,
    LastName,
    Gender,
    DateOfBirth,
    Email,
    Phone,
    HireDate,
    Salary,
    City,
    DepartmentID,
    ManagerID
)
VALUES
('Rahul','Sharma','Male','1995-05-14','rahul.sharma@technova.com','9876543210','2021-06-15',65000,'Delhi',2,NULL),

('Priya','Verma','Female','1997-08-22','priya.verma@technova.com','9876543211','2022-01-10',52000,'Noida',1,1),

('Amit','Singh','Male','1994-11-12','amit.singh@technova.com','9876543212','2020-09-05',72000,'Gurugram',3,1),

('Neha','Gupta','Female','1998-03-19','neha.gupta@technova.com','9876543213','2023-02-12',48000,'Delhi',4,3),

('Rohit','Kumar','Male','1993-07-25','rohit.kumar@technova.com','9876543214','2019-12-20',80000,'Ghaziabad',2,1),

('Anjali','Mehta','Female','1996-09-30','anjali.mehta@technova.com','9876543215','2021-04-18',61000,'Faridabad',5,3),

('Vivek','Joshi','Male','1992-02-17','vivek.joshi@technova.com','9876543216','2018-11-11',90000,'Delhi',6,NULL),

('Sneha','Kapoor','Female','1999-01-09','sneha.kapoor@technova.com','9876543217','2023-07-03',45000,'Noida',7,7),

('Arjun','Negi','Male','1998-12-21','arjun.negi@technova.com','9876543218','2022-05-25',58000,'Dehradun',2,1),

('Pooja','Bansal','Female','1995-06-08','pooja.bansal@technova.com','9876543219','2020-08-30',69000,'Jaipur',8,7);

-- ==========================================
-- Insert Employees (Batch 2)
-- ==========================================

INSERT INTO Employees
(
    FirstName,
    LastName,
    Gender,
    DateOfBirth,
    Email,
    Phone,
    HireDate,
    Salary,
    City,
    DepartmentID,
    ManagerID
)
VALUES
('Karan','Malhotra','Male','1996-02-14','karan.malhotra@technova.com','9876543220','2021-03-15',62000,'Delhi',2,1),

('Ritika','Arora','Female','1997-11-18','ritika.arora@technova.com','9876543221','2022-08-10',54000,'Noida',1,1),

('Saurabh','Yadav','Male','1993-05-27','saurabh.yadav@technova.com','9876543222','2019-10-01',83000,'Lucknow',3,7),

('Megha','Sharma','Female','1998-09-12','megha.sharma@technova.com','9876543223','2023-01-05',47000,'Jaipur',5,6),

('Deepak','Verma','Male','1994-07-21','deepak.verma@technova.com','9876543224','2020-07-18',76000,'Delhi',6,7),

('Komal','Gupta','Female','1999-03-16','komal.gupta@technova.com','9876543225','2023-06-11',44000,'Ghaziabad',7,7),

('Nitin','Rawat','Male','1995-01-28','nitin.rawat@technova.com','9876543226','2021-12-09',69000,'Dehradun',2,1),

('Shreya','Agarwal','Female','1996-10-06','shreya.agarwal@technova.com','9876543227','2022-02-14',56000,'Chandigarh',4,3),

('Manish','Chauhan','Male','1992-08-09','manish.chauhan@technova.com','9876543228','2018-05-30',92000,'Pune',9,NULL),

('Simran','Kaur','Female','1998-04-04','simran.kaur@technova.com','9876543229','2023-04-20',51000,'Amritsar',10,19);

-- ==========================================
-- Insert Employees (Batch 3)
-- ==========================================

INSERT INTO Employees
(
    FirstName,
    LastName,
    Gender,
    DateOfBirth,
    Email,
    Phone,
    HireDate,
    Salary,
    City,
    DepartmentID,
    ManagerID
)
VALUES
('Harsh','Saxena','Male','1995-01-15','harsh.saxena@technova.com','9876543230','2021-05-12',68000,'Delhi',2,1),

('Nisha','Yadav','Female','1997-09-18','nisha.yadav@technova.com','9876543231','2022-07-11',53000,'Noida',1,1),

('Mohit','Bhardwaj','Male','1993-03-28','mohit.bhardwaj@technova.com','9876543232','2020-01-14',79000,'Gurugram',3,7),

('Riya','Sharma','Female','1998-12-11','riya.sharma@technova.com','9876543233','2023-02-01',47000,'Jaipur',5,6),

('Akash','Gupta','Male','1994-06-17','akash.gupta@technova.com','9876543234','2019-08-10',82000,'Delhi',6,7),

('Tanya','Kapoor','Female','1999-04-09','tanya.kapoor@technova.com','9876543235','2023-06-21',45000,'Ghaziabad',7,7),

('Lokesh','Negi','Male','1996-10-20','lokesh.negi@technova.com','9876543236','2021-11-18',67000,'Dehradun',2,1),

('Kriti','Bansal','Female','1997-08-14','kriti.bansal@technova.com','9876543237','2022-04-05',56000,'Chandigarh',4,3),

('Yash','Jain','Male','1992-11-03','yash.jain@technova.com','9876543238','2018-09-15',94000,'Pune',9,NULL),

('Ishita','Arora','Female','1998-05-27','ishita.arora@technova.com','9876543239','2023-03-19',52000,'Amritsar',10,29);

-- ==========================================
-- Insert Employees (Batch 4)
-- ==========================================

INSERT INTO Employees
(
    FirstName,
    LastName,
    Gender,
    DateOfBirth,
    Email,
    Phone,
    HireDate,
    Salary,
    City,
    DepartmentID,
    ManagerID
)
VALUES
('Abhishek','Mishra','Male','1995-02-18','abhishek.mishra@technova.com','9876543240','2021-02-15',71000,'Delhi',2,1),

('Sakshi','Verma','Female','1998-01-09','sakshi.verma@technova.com','9876543241','2023-01-10',48000,'Noida',1,1),

('Rajat','Singh','Male','1994-07-26','rajat.singh@technova.com','9876543242','2020-06-11',76000,'Lucknow',3,7),

('Aarti','Mehra','Female','1997-03-14','aarti.mehra@technova.com','9876543243','2022-09-12',55000,'Jaipur',5,6),

('Varun','Sharma','Male','1993-09-25','varun.sharma@technova.com','9876543244','2019-04-18',87000,'Delhi',6,7),

('Payal','Gupta','Female','1999-08-19','payal.gupta@technova.com','9876543245','2023-05-16',46000,'Ghaziabad',7,7),

('Hemant','Rawat','Male','1996-12-28','hemant.rawat@technova.com','9876543246','2021-12-20',69000,'Dehradun',2,1),

('Divya','Kapoor','Female','1997-10-07','divya.kapoor@technova.com','9876543247','2022-03-01',59000,'Chandigarh',4,3),

('Naveen','Joshi','Male','1991-06-11','naveen.joshi@technova.com','9876543248','2017-08-25',98000,'Pune',9,NULL),

('Muskan','Arora','Female','1998-11-22','muskan.arora@technova.com','9876543249','2023-04-15',51000,'Delhi',10,39);

-- ==========================================
-- Insert Employees (Batch 5)
-- ==========================================

INSERT INTO Employees
(
    FirstName,
    LastName,
    Gender,
    DateOfBirth,
    Email,
    Phone,
    HireDate,
    Salary,
    City,
    DepartmentID,
    ManagerID
)
VALUES
('Aditya','Tiwari','Male','1995-04-12','aditya.tiwari@technova.com','9876543250','2021-06-10',72000,'Delhi',2,1),

('Khushi','Sharma','Female','1998-07-15','khushi.sharma@technova.com','9876543251','2023-01-25',49000,'Noida',1,1),

('Gaurav','Pandey','Male','1994-09-08','gaurav.pandey@technova.com','9876543252','2020-10-05',81000,'Lucknow',3,7),

('Rashmi','Joshi','Female','1997-12-18','rashmi.joshi@technova.com','9876543253','2022-08-18',56000,'Jaipur',5,6),

('Vikas','Yadav','Male','1993-11-03','vikas.yadav@technova.com','9876543254','2019-05-14',86000,'Gurugram',6,7),

('Nandini','Sethi','Female','1999-02-21','nandini.sethi@technova.com','9876543255','2023-04-12',47000,'Ghaziabad',7,7),

('Tarun','Bisht','Male','1996-08-30','tarun.bisht@technova.com','9876543256','2021-09-07',70000,'Dehradun',2,1),

('Pallavi','Mishra','Female','1997-06-19','pallavi.mishra@technova.com','9876543257','2022-05-20',60000,'Chandigarh',4,3),

('Sachin','Rana','Male','1992-01-11','sachin.rana@technova.com','9876543258','2018-03-28',99000,'Pune',9,NULL),

('Ruchi','Malik','Female','1998-10-09','ruchi.malik@technova.com','9876543259','2023-02-15',53000,'Delhi',10,49);

-- ==========================================
-- Insert Projects
-- ==========================================

INSERT INTO Projects
(
    ProjectName,
    StartDate,
    EndDate,
    Budget
)
VALUES
('HR Portal','2024-01-10','2024-06-30',500000),
('Payroll System','2024-02-15','2024-08-20',750000),
('CRM Development','2024-03-01','2024-12-15',1200000),
('Inventory Management','2024-01-20','2024-09-10',950000),
('Hospital Management','2024-04-01','2025-01-31',1800000),
('Banking Application','2024-02-05','2025-03-15',2500000),
('E-Commerce Website','2024-05-12','2025-02-28',1400000),
('School ERP','2024-03-18','2024-11-30',850000),
('Library Management','2024-06-01','2024-12-31',400000),
('Attendance System','2024-01-05','2024-05-30',300000),
('Food Delivery App','2024-04-15','2025-02-10',1600000),
('Employee Portal','2024-07-01','2025-01-20',650000),
('Online Examination','2024-08-10','2025-04-15',900000),
('Travel Booking System','2024-09-01','2025-06-30',1700000),
('AI Chatbot','2024-10-01','2025-07-31',2100000);

-- ==========================================
-- EmployeeProjects (Batch 1)
-- ==========================================

INSERT INTO EmployeeProjects
(EmployeeID,ProjectID,AssignedDate)
VALUES
(1,1,'2024-01-10'),
(2,1,'2024-01-11'),
(3,2,'2024-02-15'),
(4,2,'2024-02-16'),
(5,3,'2024-03-01'),
(6,3,'2024-03-02'),
(7,4,'2024-01-20'),
(8,4,'2024-01-22'),
(9,5,'2024-04-01'),
(10,5,'2024-04-02'),
(11,6,'2024-02-05'),
(12,6,'2024-02-06'),
(13,7,'2024-05-12'),
(14,7,'2024-05-13'),
(15,8,'2024-03-18'),
(16,8,'2024-03-19'),
(17,9,'2024-06-01'),
(18,9,'2024-06-02'),
(19,10,'2024-01-05'),
(20,10,'2024-01-06');

-- ==========================================
-- EmployeeProjects (Batch 2)
-- ==========================================

INSERT INTO EmployeeProjects
(EmployeeID, ProjectID, AssignedDate)
VALUES
(21,11,'2024-04-15'),
(22,11,'2024-04-16'),
(23,12,'2024-07-01'),
(24,12,'2024-07-02'),
(25,13,'2024-08-10'),
(26,13,'2024-08-11'),
(27,14,'2024-09-01'),
(28,14,'2024-09-02'),
(29,15,'2024-10-01'),
(30,15,'2024-10-02'),
(31,1,'2024-01-15'),
(32,2,'2024-02-20'),
(33,3,'2024-03-10'),
(34,4,'2024-01-25'),
(35,5,'2024-04-08'),
(36,6,'2024-02-18'),
(37,7,'2024-05-20'),
(38,8,'2024-03-28'),
(39,9,'2024-06-08'),
(40,10,'2024-01-15');

-- ==========================================
-- EmployeeProjects (Batch 3)
-- ==========================================

INSERT INTO EmployeeProjects
(EmployeeID, ProjectID, AssignedDate)
VALUES
(41,11,'2024-04-20'),
(42,12,'2024-07-05'),
(43,13,'2024-08-15'),
(44,14,'2024-09-05'),
(45,15,'2024-10-05'),
(46,1,'2024-01-18'),
(47,2,'2024-02-22'),
(48,3,'2024-03-15'),
(49,4,'2024-01-28'),
(50,5,'2024-04-12'),
(1,6,'2024-02-08'),
(2,7,'2024-05-15'),
(3,8,'2024-03-20'),
(4,9,'2024-06-05'),
(5,10,'2024-01-12'),
(6,11,'2024-04-18'),
(7,12,'2024-07-04'),
(8,13,'2024-08-14'),
(9,14,'2024-09-08'),
(10,15,'2024-10-08');

-- ==========================================
-- EmployeeProjects (Batch 4 - Final)
-- ==========================================

INSERT INTO EmployeeProjects
(EmployeeID, ProjectID, AssignedDate)
VALUES
(31,6,'2024-02-10'),
(32,7,'2024-05-21'),
(33,8,'2024-03-25'),
(34,9,'2024-06-11'),
(35,10,'2024-01-18'),
(36,11,'2024-04-24'),
(37,12,'2024-07-10'),
(38,13,'2024-08-20'),
(39,14,'2024-09-15'),
(40,15,'2024-10-15'),
(41,1,'2024-01-21'),
(42,2,'2024-02-25'),
(43,3,'2024-03-18'),
(44,4,'2024-01-30'),
(45,5,'2024-04-15'),
(46,6,'2024-02-14'),
(47,7,'2024-05-24'),
(48,8,'2024-03-30'),
(49,9,'2024-06-15'),
(50,10,'2024-01-20');

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    THROW;
END CATCH;