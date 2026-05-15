
---- DDL-----

USE master
GO

IF DB_ID('StudentDB') IS NOT NULL
    DROP DATABASE StudentDB
GO
CREATE DATABASE StudentDB
 
( 
    NAME = StudentDB_Data_1,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StudentDB_Data_1.mdf',
    SIZE = 25MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5%
)
LOG ON
(    
    NAME = StudentDB_Log_1,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StudentDB_Log_1.ldf',
    SIZE = 2MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 1MB
);
GO

USE StudentDB;
GO



----3. DEPARTMENT TABLE----
CREATE TABLE Department 
(
    DeptID INT PRIMARY KEY IDENTITY(1,1),
    DeptName VARCHAR(100)
);
GO

-----1. APPLICANT TABLE---
CREATE TABLE Applicant
(
    ApplicantID INT PRIMARY KEY IDENTITY(10000,1),
    ApplicantNo VARCHAR(20) UNIQUE NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
	City VARCHAR(20) NOT NULL,
	States VARCHAR(3) NOT NULL,
	DoB DATE NOT NULL,
	ApplyDate DATETIME DEFAULT GETDATE()

);
GO

-----2. APPLICANT RESULT TABLE-----
CREATE TABLE ApplicantResult
(
    ResultID INT PRIMARY KEY IDENTITY(1,1),
    ApplicantID INT NOT NULL,
    ExamName VARCHAR(100),
    ExamDate DATE,
    MARKS INT CHECK (MARKS BETWEEN 0 AND 100),
    CreateDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ApplicantID) REFERENCES Applicant(ApplicantID)
);
GO



-----4. STUDENT TABLE------
CREATE TABLE Student
(
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    ApplicantID INT UNIQUE,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255),
    EnrollmentDate DATE DEFAULT GETDATE(), 
    DeptID INT DEFAULT 1,
    FOREIGN KEY (ApplicantID) REFERENCES Applicant(ApplicantID),
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
GO

-----5. INSTRUCTOR TABLE-----
CREATE TABLE Instructor
(
    InstructorID INT PRIMARY KEY IDENTITY(1,1),
   InstructorName VARCHAR(255),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
GO

------6. COURSE TABLE-----
CREATE TABLE Course
(
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName VARCHAR(100),
    Credits INT,
    InstructorID INT,
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
GO

-----7. ENROLLMENT TABLE----

CREATE TABLE Enrollment
(
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),  
    StudentID INT, 
    CourseID INT, 
    Grade CHAR(2),
    Semester VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID) 
);
GO

CREATE TABLE PaymentTerms
(
    TermsID INT PRIMARY KEY IDENTITY(1,1),
    TermsDescription VARCHAR(100) NOT NULL,
    TermsDueDays INT NOT NULL CHECK (TermsDueDays > 0),
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    ReceiptNumber VARCHAR(50) UNIQUE NOT NULL,
    PaymentDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    ScholarshipAmount DECIMAL(10,2) DEFAULT 0.00,
    PaidAmount DECIMAL(10,2) DEFAULT 0.00,
    TermsID INT,
    PaymentDueDate DATE,
    PaymentClearedDate DATE,
    
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (TermsID) REFERENCES PaymentTerms(TermsID)
);
GO

------11. TRIGGER CREATE -------
CREATE OR ALTER TRIGGER trg_ManageStudentOnResult
ON ApplicantResult
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
   
    -----12. Handle DELETE ------
    IF EXISTS (SELECT 1 FROM deleted)
    BEGIN
        DELETE S
        FROM Student S
        INNER JOIN deleted D ON S.ApplicantID = D.ApplicantID;
    END
       -----13. Handle INSERT/UPDATE-----
    IF EXISTS (SELECT 1 FROM inserted)
    BEGIN
        -----14. Insert new students for passed candidates-----
INSERT INTO Student (ApplicantID, FirstName, LastName, Email)
SELECT DISTINCT
A.ApplicantID,
A.FirstName,
A.LastName,
A.Email
FROM inserted I
INNER JOIN Applicant A ON A.ApplicantID = I.ApplicantID
WHERE I.MARKS >= 50
AND NOT EXISTS (SELECT 1 FROM STUDENT S WHERE S.ApplicantID = I.ApplicantID);
        
------15. Delete students who failed-------
        DELETE FROM Student          
        WHERE ApplicantID IN (
            SELECT ApplicantID 
            FROM inserted 
            WHERE MARKS < 50
        );
    END
END;
GO
-----16. INDEX CREATE (DDL)------
CREATE INDEX IX_ApplicantResult_Applicant ON ApplicantResult(ApplicantID);
CREATE INDEX IX_ApplicantResult_MARKS ON ApplicantResult(MARKS);
CREATE INDEX IX_Student_Applicant ON Student(ApplicantID);
CREATE NONCLUSTERED INDEX IX_PaymentTerms_TermsDueDays ON PaymentTerms(TermsDueDays);
GO
--Justify---
EXEC sp_helpindex 'ApplicantResult'
EXEC sp_helpindex 'Student'
EXEC sp_helpindex 'PaymentTerms'
GO
-----DROP INDEX
DROP INDEX IX_PaymentTerms_TermsDueDays ON PaymentTerms;
GO
SELECT * FROM PaymentTerms
--Sequence
CREATE SEQUENCE Seq_StudentID
 START WITH 1
 INCREMENT BY 1
 MINVALUE 0 MAXVALUE 15
 CYCLE CACHE 10
GO
--Justify--
SELECT NEXT VALUE FOR Seq_StudentID AS NextID
GO
---ALTER SEQUENCE
ALTER SEQUENCE Seq_StudentID
 RESTART WITH 2
 INCREMENT BY 2
 MINVALUE -2 
 MAXVALUE 10
 CYCLE 
 CACHE 10
GO
--Justify--
SELECT NEXT VALUE FOR Seq_StudentID AS NextID
GO

----DROP SEQUENCE
DROP SEQUENCE Seq_StudentID
GO

----Get current date and time
SELECT 
GETDATE() AS CurrentDateTime,
CAST(GETDATE() AS DATE) AS CurrentDateOnly
GO

---PaymentArchive
CREATE TABLE PaymentArchive
(
    PaymentID INT PRIMARY KEY,
    StudentID INT,
    ReceiptNumber VARCHAR(50),
    PaymentDate DATE,
    TotalAmount DECIMAL(10,2),
    ScholarshipAmount DECIMAL(10,2),
    PaidAmount DECIMAL(10,2),
    TermsID INT,
    PaymentDueDate DATE,
    PaymentClearedDate DATE
);
GO

---TRUNCATE TABLE
TRUNCATE TABLE PaymentArchive
--DROP TABLE
--DROP TABLE PaymentCopy

----CREATE VIEW
USE StudentDB
GO

CREATE VIEW vu_PaymentInfo
AS
SELECT p.PaymentID, p.ReceiptNumber, p.PaymentDate, s.FirstName + ' ' + s.LastName AS StudentName,
d.DeptName AS Department, p.TotalAmount, p.PaidAmount, (p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) AS DueAmount,
pt.TermsDescription
FROM Payment p
JOIN Student s ON p.StudentID = s.StudentID
JOIN Department d ON s.DeptID = d.DeptID
JOIN PaymentTerms pt ON p.TermsID = pt.TermsID
WHERE (p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) > 0
AND d.DeptName != 'Physics'
AND pt.TermsID != 1;
GO
------Justify------
SELECT * FROM vu_PaymentInfo
GO

----CREATE VIEW WITH ENCRYPTION
USE StudentDB
GO

CREATE VIEW vu_PaymentInfo1
WITH ENCRYPTION
AS
SELECT p.PaymentID, p.ReceiptNumber, p.PaymentDate, s.FirstName + ' ' + s.LastName AS StudentName,
d.DeptName AS Department, p.TotalAmount, p.PaidAmount, (p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) AS DueAmount,
pt.TermsDescription
FROM Payment p
JOIN Student s ON p.StudentID = s.StudentID
JOIN Department d ON s.DeptID = d.DeptID
JOIN PaymentTerms pt ON p.TermsID = pt.TermsID
WHERE (p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) > 0
AND d.DeptName != 'Physics'
AND pt.TermsID != 1;
GO
------Justify------
SELECT * FROM vu_PaymentInfo1
GO

----CREATE VIEW WITH SCHEMABINDING 
USE StudentDB
GO
CREATE VIEW vu_PaymentInfo2
WITH SCHEMABINDING
AS
SELECT p.PaymentID, p.ReceiptNumber, p.PaymentDate, s.FirstName + ' ' + s.LastName AS StudentName,
d.DeptName AS Department, p.TotalAmount, p.PaidAmount, 
(p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) AS DueAmount, pt.TermsDescription
FROM dbo.Payment p                   
JOIN dbo.Student s ON p.StudentID = s.StudentID     
JOIN dbo.Department d ON s.DeptID = d.DeptID         
JOIN dbo.PaymentTerms pt ON p.TermsID = pt.TermsID  
WHERE (p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) > 0
  AND d.DeptName != 'Physics'
  AND pt.TermsID != 1;
GO
------Justify------
SELECT * FROM vu_PaymentInfo2
GO

----CREATE VIEW WITH SCHEMABINDING, ENCRYPTION
USE StudentDB
GO
CREATE VIEW vu_PaymentInfo3
WITH SCHEMABINDING, ENCRYPTION
AS
SELECT p.PaymentID, p.ReceiptNumber, p.PaymentDate, s.FirstName + ' ' + s.LastName AS StudentName,
d.DeptName AS Department, p.TotalAmount, p.PaidAmount, 
(p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) AS DueAmount, pt.TermsDescription
FROM dbo.Payment p                   
JOIN dbo.Student s ON p.StudentID = s.StudentID     
JOIN dbo.Department d ON s.DeptID = d.DeptID         
JOIN dbo.PaymentTerms pt ON p.TermsID = pt.TermsID  
WHERE (p.TotalAmount - p.ScholarshipAmount - p.PaidAmount) > 0
  AND d.DeptName != 'Physics'
  AND pt.TermsID != 1;
GO
------Justify------
SELECT * FROM vu_PaymentInfo3
GO

---CREATE VIEW WITH CHECK OPTION
CREATE VIEW vu_TestCheck
AS
SELECT PaymentID,PaidAmount 
FROM Payment 
WHERE PaidAmount > 5000
WITH CHECK OPTION;
GO

------Justify------
EXEC sp_helptext'vu_TestCheck'
GO


-- Create
CREATE VIEW vu_Simple AS SELECT * FROM Payment
GO

-- Alter
ALTER VIEW vu_Simple AS SELECT PaymentID,PaidAmount FROM Payment
GO

-- Drop
DROP VIEW vu_Simple
GO





-------CREATE LOGIN------

USE StudentDB;
GO
-- SQL Login
CREATE LOGIN JohnDoe WITH PASSWORD = 'StrongP@ssw0rd';


-------ALTER LOGIN-------

-- Change Password
ALTER LOGIN JohnDoe WITH PASSWORD = 'NewStrongP@ssw0rd' OLD_PASSWORD = 'StrongP@ssw0rd';

-- Enable Login
ALTER LOGIN JohnDoe ENABLE;

-- Change Default Database
ALTER LOGIN JohnDoe WITH DEFAULT_DATABASE = StudentDB;

------ DROP LOGIN-----

DROP LOGIN JohnDoe;

------CREATE USER------

-- Create User from Login
USE StudentDB;
GO
---CREATE LOGIN Kamal WITH PASSWORD = 'Kamal@123';
---CREATE USER Kamal FOR LOGIN Kamal;  


-- Create User with Default Schema
---CREATE LOGIN KamalHossain WITH PASSWORD = 'Kamal@123';
---CREATE USER KamalHossain FOR LOGIN KamalHossain WITH DEFAULT_SCHEMA = dbo;

------CREATE ROLE----

-- Create Database Role
CREATE ROLE DataReader;

-- Create Role with Owner
CREATE ROLE DataWriter AUTHORIZATION dbo;

-----GRANT-----

-- Grant on Table
GRANT SELECT ON Student TO DataReader;

-- Grant on Schema
GRANT INSERT, UPDATE ON SCHEMA::dbo TO DataWriter;

-- Grant on Procedure
GRANT EXECUTE ON spInsertPayment TO DataReader;


------ Revoke Permission------
REVOKE SELECT ON Student FROM DataReader;


------ Deny Permission-----
DENY DELETE ON Student TO DataReader;

----Schema Permissions

-- Grant on Schema
GRANT SELECT ON SCHEMA::dbo TO DataReader;

-- Deny on Schema
DENY EXECUTE ON SCHEMA::dbo TO DataReader;

-- Revoke on Schema
REVOKE SELECT ON SCHEMA::dbo FROM DataReader;





