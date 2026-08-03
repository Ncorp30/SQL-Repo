-- ==========================================
-- Project 1 : Employee Management System
-- File      : 01_Database_Setup.sql
-- Author    : Pushkar Negi
-- Purpose   : Create the project database
-- ==========================================

BEGIN TRY
    CREATE DATABASE EmployeeManagementDB;
END TRY
BEGIN CATCH
    IF ERROR_NUMBER() <> 1801 THROW;
END CATCH
GO

USE EmployeeManagementDB;
GO