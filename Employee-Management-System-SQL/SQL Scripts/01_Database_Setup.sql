-- ==========================================
-- Project 1 : Employee Management System
-- File      : 01_Database_Setup.sql
-- Author    : Pushkar Negi
-- Purpose   : Create the project database
-- ==========================================

IF DB_ID('EmployeeManagementDB') IS NULL
BEGIN
    CREATE DATABASE EmployeeManagementDB;
END
GO

USE EmployeeManagementDB;
GO