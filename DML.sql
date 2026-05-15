-- DML

USE StudentDB;
GO

-- DEPARTMENT INSERT
INSERT INTO Department (DeptName)
VALUES
('Computer Science'),
('Mathematics'),
('Physics');
GO



-- APPLICANT INSERT
INSERT INTO Applicant (ApplicantNo, FirstName, LastName, Email, City, States, DoB)
VALUES
('APP001', 'Rafiq', 'Islam', 'rafiq@email.com', 'Dhaka', 'DHA', '2000-01-01'),
('APP002', 'Sharmin', 'Akter', 'sharmin@email.com', 'Rangpur', 'RAN', '2000-06-01'),
('APP003', 'Kamal', 'Hossain', 'kamal@email.com', 'Khulna', 'KHU', '1996-01-26'),
('APP004', 'Imran', 'Khan', 'imran@email.com', 'Manikgonj', 'MNK', '2001-02-15'),
('APP005', 'Rakib', 'Hasan', 'rakib@email.com', 'Rajshahi', 'RAJ', '1990-05-31'),
('APP006', 'Hasib', 'Rahman', 'hasib@email.com', 'Chattogram', 'CTG', '2009-08-27'),
('APP007', 'Hafiz', 'Islam', 'hi@email.com', 'Dhaka', 'DHA', '2006-12-11'),
('APP008', 'Tanvir', 'Ahmed', 'tanvir@email.com', 'Dhaka', 'DHA', '2001-03-15'),
('APP009', 'Nadia', 'Sultana', 'nadia@email.com', 'Sylhet', 'SYL', '2002-07-22'),
('APP010', 'Farid', 'Hasan', 'farid@email.com', 'Barisal', 'BAR', '1999-11-30'),
('APP011', 'Shila', 'Akter', 'shila@email.com', 'Dhaka', 'DHA', '2003-05-18'),
('APP012', 'Riaz', 'Uddin', 'riaz@email.com', 'Comilla', 'COM', '2000-09-09'),
('APP013', 'Moni', 'Rani', 'moni@email.com', 'Jessore', 'JES', '1998-12-25'),
('APP014', 'Shahid', 'Chowdhury', 'shahid@email.com', 'Sylhet', 'SYL', '2001-04-14'),
('APP015', 'Lima', 'Khatun', 'lima@email.com', 'Rangpur', 'RAN', '2002-10-03'),
('APP016', 'Shahin', 'Alam', 'shahin@email.com', 'Rajshahi', 'RAJ', '2000-02-28'),
('APP017', 'Tania', 'Akter', 'tania@email.com', 'Khulna', 'KHU', '1999-08-19'),
('APP018', 'Rashed', 'Khan', 'rashed@email.com', 'Chattogram', 'CTG', '2003-12-05'),
('APP019', 'Nasrin', 'Jahan', 'nasrin@email.com', 'Dhaka', 'DHA', '2001-06-30'),
('APP020', 'Jamal', 'Hossain', 'jamal@email.com', 'Manikgonj', 'MNK', '2000-11-11'),
('APP021', 'Shamim', 'Mia', 'sham@email.com', 'Tangail', 'TAN', '2002-04-17'),
('APP022', 'Rina', 'Begum', 'rina@email.com', 'Kushtia', 'KUS', '1997-09-23'),
('APP023', 'Mizan', 'Rahman', 'mizan@email.com', 'Noakhali', 'NOA', '2001-12-09'),
('APP024', 'Parvin', 'Akter', 'parvin@email.com', 'Bogra', 'BOG', '2000-07-04'),
('APP025', 'Sohel', 'Rana', 'sohel@email.com', 'Pabna', 'PAB', '1998-03-21'),
('APP026', 'Shamoli', 'Khatun', 'shamoli@email.com', 'Dinajpur', 'DIN', '2002-09-15'),
('APP027', 'Masud', 'Khan', 'masud@email.com', 'Narayanganj', 'NAR', '2000-05-27'),
('APP028', 'Shanta', 'Jahan', 'shanta@email.com', 'Gazipur', 'GAZ', '2001-08-08'),
('APP029', 'Al Amin', 'Hossain', 'alamin@email.com', 'Mymensingh', 'MYM', '1999-12-12'),
('APP030', 'Shamim', 'Ahmed', 'shamim@email.com', 'Faridpur', 'FAR', '2003-01-19'),
('APP031', 'Taslima', 'Begum', 'taslima@email.com', 'Jamalpur', 'JAM', '2000-10-10'),
('APP032', 'Rafiqul', 'Islam', 'rafiqul@email.com', 'Sherpur', 'SHE', '2002-03-03'),
('APP033', 'Sharmin', 'Jahan', 'sharminj@email.com', 'Netrokona', 'NET', '1998-06-06'),
('APP034', 'Kamrul', 'Hasan', 'kamrul@email.com', 'Sunamganj', 'SUN', '2001-11-11'),
('APP035', 'Imran', 'Hossain', 'imranh@email.com', 'Habiganj', 'HAB', '2000-04-04'),
('APP036', 'Rakibul', 'Islam', 'rakibul@email.com', 'Brahmanbaria', 'BRA', '2002-08-08'),
('APP037', 'Hasib', 'Ahmed', 'hasiba@email.com', 'Chandpur', 'CHA', '1999-09-09'),
('APP038', 'Tanvir', 'Hasan', 'tanvirh@email.com', 'Lakshmipur', 'LAK', '2003-05-05'),
('APP039', 'Nadia', 'Islam', 'nadia_i@email.com', 'Feni', 'FEN', '2000-02-02'),
('APP040', 'Farid', 'Ahmed', 'farida@email.com', 'Cox''s Bazar', 'COX', '2001-07-07'),
('APP041', 'Shila', 'Begum', 'shilab@email.com', 'Bandarban', 'BAN', '1998-10-10'),
('APP042', 'Riaz', 'Hasan', 'riazh@email.com', 'Rangamati', 'RAN', '2002-12-12'),
('APP043', 'Moni', 'Hossain', 'monih@email.com', 'Khagrachhari', 'KHA', '2000-03-03'),
('APP044', 'Shahid', 'Islam', 'shahidi@email.com', 'Patuakhali', 'PAT', '2001-09-09'),
('APP045', 'Lima', 'Akter', 'limaa@email.com', 'Bhola', 'BHO', '1999-04-04'),
('APP046', 'Shahin', 'Khan', 'shahink@email.com', 'Jhalokati', 'JHA', '2003-08-08'),
('APP047', 'Tania', 'Sultana', 'tanias@email.com', 'Pirojpur', 'PIR', '2000-06-06'),
('APP048', 'Rashed', 'Ahmed', 'rasheda@email.com', 'Barguna', 'BAR', '2002-01-01'),
('APP049', 'Nasrin', 'Akter', 'nasrina@email.com', 'Magura', 'MAG', '2001-05-05'),
('APP050', 'Jamal', 'Uddin', 'jamalu@email.com', 'Narail', 'NAR', '1998-07-07'),
('APP051', 'Shamim', 'Hossain', 'shamimh@email.com', 'Jhenaidah', 'JHE', '2000-11-11'),
('APP052', 'Rina', 'Khatun', 'rinak@email.com', 'Chuadanga', 'CHU', '2002-03-03'),
('APP053', 'Mizan', 'Hasan', 'mizanh@email.com', 'Meherpur', 'MEH', '1999-08-08'),
('APP054', 'Parvin', 'Sultana', 'parvins@email.com', 'Kushtia', 'KUS', '2001-10-10'),
('APP055', 'Sohel', 'Ahmed', 'sohela@email.com', 'Bagerhat', 'BAG', '2003-02-02'),
('APP056', 'Shamoli', 'Rani', 'shamolir@email.com', 'Satkhira', 'SAT', '2000-09-09'),
('APP057', 'Masud', 'Rana', 'masudr@email.com', 'Gopalganj', 'GOP', '2002-04-04'),
('APP058', 'Shanta', 'Akter', 'shantaa@email.com', 'Madaripur', 'MAD', '2001-06-06'),
('APP059', 'Al Amin', 'Islam', 'alamini@email.com', 'Shariatpur', 'SHA', '1999-12-12'),
('APP060', 'Taslima', 'Akter', 'taslimaa@email.com', 'Rajbari', 'RAJ', '2000-07-07');
GO

-- APPLICANT RESULT INSERT 
INSERT INTO ApplicantResult(ApplicantID,ExamName,ExamDate,MARKS)
VALUES
(10000, 'Admission Test', '2026-03-15', 85),
(10001, 'Admission Test', '2026-03-15', 92),
(10002, 'Admission Test', '2026-03-15', 78),
(10003, 'Admission Test', '2026-03-15', 50),
(10004, 'Admission Test', '2026-03-15', 51),
(10005, 'Admission Test', '2026-03-15', 51),
(10006, 'Admission Test', '2026-03-15', 45),
(10007, 'Admission Test', '2026-03-15', 63),
(10008, 'Admission Test', '2026-03-15', 72),
(10009, 'Admission Test', '2026-03-15', 88),
(10010, 'Admission Test', '2026-03-15', 94),
(10011, 'Admission Test', '2026-03-15', 37),
(10012, 'Admission Test', '2026-03-15', 69),
(10013, 'Admission Test', '2026-03-15', 81),
(10014, 'Admission Test', '2026-03-15', 55),
(10015, 'Admission Test', '2026-03-15', 48),
(10016, 'Admission Test', '2026-03-15', 73),
(10017, 'Admission Test', '2026-03-15', 86),
(10018, 'Admission Test', '2026-03-15', 91),
(10019, 'Admission Test', '2026-03-15', 42),
(10020, 'Admission Test', '2026-03-15', 77),
(10021, 'Admission Test', '2026-03-15', 64),
(10022, 'Admission Test', '2026-03-15', 58),
(10023, 'Admission Test', '2026-03-15', 82),
(10024, 'Admission Test', '2026-03-15', 95),
(10025, 'Admission Test', '2026-03-15', 39),
(10026, 'Admission Test', '2026-03-15', 70),
(10027, 'Admission Test', '2026-03-15', 83),
(10028, 'Admission Test', '2026-03-15', 54),
(10029, 'Admission Test', '2026-03-15', 61),
(10030, 'Admission Test', '2026-03-15', 79),
(10031, 'Admission Test', '2026-03-15', 44),
(10032, 'Admission Test', '2026-03-15', 68),
(10033, 'Admission Test', '2026-03-15', 89),
(10034, 'Admission Test', '2026-03-15', 93),
(10035, 'Admission Test', '2026-03-15', 41),
(10036, 'Admission Test', '2026-03-15', 75),
(10037, 'Admission Test', '2026-03-15', 84),
(10038, 'Admission Test', '2026-03-15', 57),
(10039, 'Admission Test', '2026-03-15', 62),
(10040, 'Admission Test', '2026-03-15', 71),
(10041, 'Admission Test', '2026-03-15', 46),
(10042, 'Admission Test', '2026-03-15', 66),
(10043, 'Admission Test', '2026-03-15', 87),
(10044, 'Admission Test', '2026-03-15', 90),
(10045, 'Admission Test', '2026-03-15', 38),
(10046, 'Admission Test', '2026-03-15', 74),
(10047, 'Admission Test', '2026-03-15', 80),
(10048, 'Admission Test', '2026-03-15', 53),
(10049, 'Admission Test', '2026-03-15', 59),

(10050, 'Admission Test', '2026-03-15', NULL),
(10051, 'Admission Test', '2026-03-15', NULL),
(10052, 'Admission Test', '2026-03-15', NULL),
(10053, 'Admission Test', '2026-03-15', NULL),
(10054, 'Admission Test', '2026-03-15', NULL),
(10055, 'Admission Test', '2026-03-15', NULL),
(10056, 'Admission Test', '2026-03-15', NULL),
(10057, 'Admission Test', '2026-03-15', NULL),
(10058, 'Admission Test', '2026-03-15', NULL),
(10059, 'Admission Test', '2026-03-15', NULL);
GO

---Marks range wise count (Grouping Function)
SELECT 
    CASE 
        WHEN MARKS BETWEEN 80 AND 100 THEN '80-100 (A+)'
        WHEN MARKS BETWEEN 70 AND 79 THEN '70-79 (A)'
        WHEN MARKS BETWEEN 60 AND 69 THEN '60-69 (A-)'
        WHEN MARKS BETWEEN 50 AND 59 THEN '50-59 (B)'
        WHEN MARKS BETWEEN 40 AND 49 THEN '40-49 (C)'
        WHEN MARKS BETWEEN 0 AND 39 THEN '0-39 (F)'
        ELSE 'Absent'
    END AS MarksRange,
    COUNT(*) AS Students
FROM ApplicantResult
GROUP BY 
     CASE 
        WHEN MARKS BETWEEN 80 AND 100 THEN '80-100 (A+)'
        WHEN MARKS BETWEEN 70 AND 79 THEN '70-79 (A)'
        WHEN MARKS BETWEEN 60 AND 69 THEN '60-69 (A-)'
        WHEN MARKS BETWEEN 50 AND 59 THEN '50-59 (B)'
        WHEN MARKS BETWEEN 40 AND 49 THEN '40-49 (C)'
        WHEN MARKS BETWEEN 0 AND 39 THEN '0-39 (F)'
        ELSE 'Absent'
    END
ORDER BY MarksRange
Go



-- INSTRUCTOR INSERT 
INSERT INTO Instructor (InstructorName, DeptID) 
VALUES
('Dr. Alan Turing', 1),
('Dr. Emmy Noether', 2),
('Dr. Rosalind Franklin', 3);
GO

-- COURSE INSERT
INSERT INTO Course (CourseName, Credits, InstructorID)
VALUES
('Database Systems', 4, 1),
('Discrete Mathematics', 3, 2),
('Algorithms', 4, 1),
('Quantum Physics', 4, 3);
GO
---Enrollments & Grades
INSERT INTO Enrollment (StudentID, CourseID, Grade, Semester) VALUES
(1, 1, 'A', 'Spring 2026'),
(1, 2, 'B+', 'Spring 2026'),
(2, 1, 'A-', 'Spring 2026'),
(3, 2, 'A', 'Spring 2026');
--INSERT INTO Enrollment (StudentID, CourseID, Grade, Semester) VALUES
--(1, 3, 'A', 'Fall 2026'),    
--(2, 2, 'C+', 'Spring 2026'), 
--(2, 2, 'A-', 'Fall 2026'),   
--(1, 1, 'W', 'Spring 2026');
GO

INSERT INTO PaymentTerms (TermsDescription, TermsDueDays)
VALUES
('Net due 10 days', 10),
('Net due 20 days', 20),
('Net due 30 days', 30),
('Net due 60 days', 60),
('Net due 90 days', 90);
GO


USE StudentDB;
GO









INSERT INTO PaymentTerms (TermsDescription, TermsDueDays)
VALUES
('Net due 10 days', 10),
('Net due 20 days', 20),
('Net due 30 days', 30),
('Net due 60 days', 60),
('Net due 90 days', 90);
GO


INSERT INTO Payment (
    StudentID, 
    ReceiptNumber, 
    PaymentDate, 
    TotalAmount, 
    ScholarshipAmount, 
    PaidAmount, 
    TermsID, 
    PaymentDueDate, 
    PaymentClearedDate
)
VALUES

(1, 'RCT-2026-001', '2026-03-10', 7500.00, 3750.00, 3750.00, 3, '2026-04-15', '2026-03-10'),
(1, 'RCT-2026-002', '2026-03-12', 7500.00, 3750.00, 3750.00, 3, '2026-04-15', '2026-03-12'),

(2, 'RCT-2026-003', '2026-03-15', 7500.00, 2250.00, 5000.00, 2, '2026-04-15', NULL),

(3, 'RCT-2026-004', '2026-03-18', 6600.00, 1320.00, 5280.00, 3, '2026-04-10', '2026-03-18'),


(4, 'RCT-2026-005', '2026-03-20', 7200.00, 720.00, 6480.00, 3, '2026-04-20', '2026-03-20'),


(5, 'RCT-2026-006', '2026-03-25', 7500.00, 0.00, 7500.00, 1, '2026-04-25', '2026-03-25'),


(6, 'RCT-2026-007', '2026-03-28', 6600.00, 0.00, 6600.00, 1, '2026-04-10', '2026-04-15'),


(2, 'RCT-2026-008', '2026-04-05', 7500.00, 2250.00, 2500.00, 2, '2026-04-15', NULL),


(1, 'RCT-2026-009', '2026-02-15', 7500.00, 3750.00, 3750.00, 3, '2026-04-15', '2026-02-15'),

(7, 'RCT-2026-010', '2026-04-20', 6600.00, 3300.00, 3300.00, 1, '2026-04-10', '2026-04-20'),

(1, 'RCT-2026-012', '2026-04-02', 7500.00, 3750.00, 3750.00, 3, '2026-05-02', '2026-04-02'),
(1, 'RCT-2026-013', '2026-04-05', 7500.00, 3750.00, 3750.00, 3, '2026-05-05', '2026-04-05'),
(2, 'RCT-2026-014', '2026-04-08', 7500.00, 2250.00, 3000.00, 2, '2026-04-28', NULL),
(2, 'RCT-2026-015', '2026-04-12', 7500.00, 2250.00, 2250.00, 2, '2026-05-02', NULL),
(3, 'RCT-2026-016', '2026-04-10', 6600.00, 1320.00, 5280.00, 3, '2026-05-10', '2026-04-10'),
(3, 'RCT-2026-017', '2026-04-15', 6600.00, 1320.00, 5280.00, 3, '2026-05-15', '2026-04-15'),
(4, 'RCT-2026-018', '2026-04-18', 7200.00, 720.00, 6480.00, 3, '2026-05-18', '2026-04-18'),
(4, 'RCT-2026-019', '2026-04-22', 7200.00, 720.00, 6480.00, 3, '2026-05-22', '2026-04-22'),
(5, 'RCT-2026-020', '2026-04-05', 7500.00, 0.00, 7500.00, 1, '2026-04-15', '2026-04-05'),
(5, 'RCT-2026-021', '2026-04-20', 7500.00, 0.00, 7500.00, 1, '2026-04-30', '2026-04-20'),
(6, 'RCT-2026-022', '2026-04-12', 6600.00, 0.00, 6600.00, 1, '2026-04-22', '2026-04-18'),
(6, 'RCT-2026-023', '2026-04-25', 6600.00, 0.00, 6600.00, 1, '2026-05-05', '2026-04-28'),
(7, 'RCT-2026-024', '2026-04-03', 7200.00, 1800.00, 5400.00, 2, '2026-04-23', '2026-04-03'),
(7, 'RCT-2026-025', '2026-04-15', 7200.00, 1800.00, 5400.00, 2, '2026-05-05', '2026-04-18'),
(8, 'RCT-2026-026', '2026-04-07', 6900.00, 0.00, 6900.00, 3, '2026-05-07', '2026-04-07'),
(8, 'RCT-2026-027', '2026-04-21', 6900.00, 0.00, 6900.00, 3, '2026-05-21', '2026-04-21'),
(9, 'RCT-2026-028', '2026-04-10', 7800.00, 1950.00, 5850.00, 2, '2026-04-30', '2026-04-12'),
(9, 'RCT-2026-029', '2026-04-24', 7800.00, 1950.00, 5850.00, 2, '2026-05-14', '2026-04-26'),
(10, 'RCT-2026-030', '2026-04-14', 7100.00, 710.00, 6390.00, 3, '2026-05-14', '2026-04-16'),
(10, 'RCT-2026-031', '2026-04-28', 7100.00, 710.00, 6390.00, 3, '2026-05-28', '2026-04-30'),


(1, 'RCT-2026-032', '2026-05-02', 7500.00, 3750.00, 3750.00, 3, '2026-06-02', '2026-05-02'),
(1, 'RCT-2026-033', '2026-05-15', 7500.00, 3750.00, 3750.00, 3, '2026-06-15', '2026-05-15'),
(1, 'RCT-2026-034', '2026-05-20', 7500.00, 3750.00, 3750.00, 3, '2026-06-20', '2026-05-22'), 
(2, 'RCT-2026-035', '2026-05-05', 7500.00, 2250.00, 2500.00, 2, '2026-05-25', NULL),
(2, 'RCT-2026-036', '2026-05-18', 7500.00, 2250.00, 2000.00, 2, '2026-06-07', NULL),
(3, 'RCT-2026-037', '2026-05-08', 6600.00, 1320.00, 5280.00, 3, '2026-06-08', '2026-05-10'),
(3, 'RCT-2026-038', '2026-05-22', 6600.00, 1320.00, 5280.00, 3, '2026-06-22', '2026-05-25'),
(4, 'RCT-2026-039', '2026-05-10', 7200.00, 720.00, 6480.00, 3, '2026-06-10', '2026-05-12'),
(4, 'RCT-2026-040', '2026-05-25', 7200.00, 720.00, 6480.00, 3, '2026-06-25', '2026-05-28'),
(5, 'RCT-2026-041', '2026-05-03', 7500.00, 0.00, 7500.00, 1, '2026-05-13', '2026-05-03'),
(5, 'RCT-2026-042', '2026-05-17', 7500.00, 0.00, 7500.00, 1, '2026-05-27', '2026-05-17'),
(5, 'RCT-2026-043', '2026-05-28', 7500.00, 0.00, 7500.00, 1, '2026-06-07', '2026-05-30'),
(6, 'RCT-2026-044', '2026-05-06', 6600.00, 0.00, 6600.00, 1, '2026-05-16', '2026-05-09'),
(6, 'RCT-2026-045', '2026-05-20', 6600.00, 0.00, 6600.00, 1, '2026-05-30', '2026-05-25'),
(7, 'RCT-2026-046', '2026-05-02', 7200.00, 1800.00, 5400.00, 2, '2026-05-22', '2026-05-04'),
(7, 'RCT-2026-047', '2026-05-16', 7200.00, 1800.00, 5400.00, 2, '2026-06-05', '2026-05-19'),
(8, 'RCT-2026-048', '2026-05-05', 6900.00, 0.00, 6900.00, 3, '2026-06-05', '2026-05-07'),
(8, 'RCT-2026-049', '2026-05-19', 6900.00, 0.00, 6900.00, 3, '2026-06-19', '2026-05-22'),
(9, 'RCT-2026-050', '2026-05-08', 7800.00, 1950.00, 5850.00, 2, '2026-05-28', '2026-05-10'),
(9, 'RCT-2026-051', '2026-05-22', 7800.00, 1950.00, 5850.00, 2, '2026-06-11', '2026-05-25'),
(10, 'RCT-2026-052', '2026-05-12', 7100.00, 710.00, 6390.00, 3, '2026-06-12', '2026-05-14'),
(10, 'RCT-2026-053', '2026-05-26', 7100.00, 710.00, 6390.00, 3, '2026-06-26', '2026-05-29'),
(11, 'RCT-2026-054', '2026-05-04', 6800.00, 1700.00, 5100.00, 2, '2026-05-24', '2026-05-06'),
(11, 'RCT-2026-055', '2026-05-18', 6800.00, 1700.00, 5100.00, 2, '2026-06-07', '2026-05-21'),
(12, 'RCT-2026-056', '2026-05-07', 7300.00, 0.00, 7300.00, 3, '2026-06-07', '2026-05-09'),
(12, 'RCT-2026-057', '2026-05-21', 7300.00, 0.00, 7300.00, 3, '2026-06-21', '2026-05-24'),


(1, 'RCT-2026-058', '2026-06-01', 7500.00, 3750.00, 3750.00, 3, '2026-07-01', '2026-06-03'),
(1, 'RCT-2026-059', '2026-06-10', 7500.00, 3750.00, 3750.00, 3, '2026-07-10', '2026-06-12'),
(1, 'RCT-2026-060', '2026-06-18', 7500.00, 3750.00, 3750.00, 3, '2026-07-18', '2026-06-20'),
(1, 'RCT-2026-061', '2026-06-25', 7500.00, 3750.00, 3750.00, 3, '2026-07-25', '2026-06-27'),
(2, 'RCT-2026-062', '2026-06-03', 7500.00, 2250.00, 3000.00, 2, '2026-06-23', NULL),
(2, 'RCT-2026-063', '2026-06-12', 7500.00, 2250.00, 2250.00, 2, '2026-07-02', NULL),
(2, 'RCT-2026-064', '2026-06-22', 7500.00, 2250.00, 2250.00, 2, '2026-07-12', NULL),
(3, 'RCT-2026-065', '2026-06-05', 6600.00, 1320.00, 5280.00, 3, '2026-07-05', '2026-06-07'),
(3, 'RCT-2026-066', '2026-06-15', 6600.00, 1320.00, 5280.00, 3, '2026-07-15', '2026-06-17'),
(3, 'RCT-2026-067', '2026-06-24', 6600.00, 1320.00, 5280.00, 3, '2026-07-24', '2026-06-26'),
(4, 'RCT-2026-068', '2026-06-02', 7200.00, 720.00, 6480.00, 3, '2026-07-02', '2026-06-04'),
(4, 'RCT-2026-069', '2026-06-14', 7200.00, 720.00, 6480.00, 3, '2026-07-14', '2026-06-16'),
(4, 'RCT-2026-070', '2026-06-23', 7200.00, 720.00, 6480.00, 3, '2026-07-23', '2026-06-25'),
(5, 'RCT-2026-071', '2026-06-04', 7500.00, 0.00, 7500.00, 1, '2026-06-14', '2026-06-06'),
(5, 'RCT-2026-072', '2026-06-11', 7500.00, 0.00, 7500.00, 1, '2026-06-21', '2026-06-13'),
(5, 'RCT-2026-073', '2026-06-18', 7500.00, 0.00, 7500.00, 1, '2026-06-28', '2026-06-20'),
(5, 'RCT-2026-074', '2026-06-25', 7500.00, 0.00, 7500.00, 1, '2026-07-05', '2026-06-27'),
(6, 'RCT-2026-075', '2026-06-06', 6600.00, 0.00, 6600.00, 1, '2026-06-16', '2026-06-09'),
(6, 'RCT-2026-076', '2026-06-17', 6600.00, 0.00, 6600.00, 1, '2026-06-27', '2026-06-20'),
(6, 'RCT-2026-077', '2026-06-26', 6600.00, 0.00, 6600.00, 1, '2026-07-06', '2026-06-29'),
(7, 'RCT-2026-078', '2026-06-02', 7200.00, 1800.00, 5400.00, 2, '2026-06-22', '2026-06-04'),
(7, 'RCT-2026-079', '2026-06-13', 7200.00, 1800.00, 5400.00, 2, '2026-07-03', '2026-06-15'),
(7, 'RCT-2026-080', '2026-06-21', 7200.00, 1800.00, 5400.00, 2, '2026-07-11', '2026-06-23'),
(8, 'RCT-2026-081', '2026-06-03', 6900.00, 0.00, 6900.00, 3, '2026-07-03', '2026-06-05'),
(8, 'RCT-2026-082', '2026-06-16', 6900.00, 0.00, 6900.00, 3, '2026-07-16', '2026-06-18'),
(8, 'RCT-2026-083', '2026-06-24', 6900.00, 0.00, 6900.00, 3, '2026-07-24', '2026-06-26'),
(9, 'RCT-2026-084', '2026-06-05', 7800.00, 1950.00, 5850.00, 2, '2026-06-25', '2026-06-07'),
(9, 'RCT-2026-085', '2026-06-15', 7800.00, 1950.00, 5850.00, 2, '2026-07-05', '2026-06-17'),
(9, 'RCT-2026-086', '2026-06-22', 7800.00, 1950.00, 5850.00, 2, '2026-07-12', '2026-06-24'),
(10, 'RCT-2026-087', '2026-06-04', 7100.00, 710.00, 6390.00, 3, '2026-07-04', '2026-06-06'),
(10, 'RCT-2026-088', '2026-06-14', 7100.00, 710.00, 6390.00, 3, '2026-07-14', '2026-06-16'),
(10, 'RCT-2026-089', '2026-06-23', 7100.00, 710.00, 6390.00, 3, '2026-07-23', '2026-06-25'),
(11, 'RCT-2026-090', '2026-06-02', 6800.00, 1700.00, 5100.00, 2, '2026-06-22', '2026-06-04'),
(11, 'RCT-2026-091', '2026-06-13', 6800.00, 1700.00, 5100.00, 2, '2026-07-03', '2026-06-15'),
(11, 'RCT-2026-092', '2026-06-21', 6800.00, 1700.00, 5100.00, 2, '2026-07-11', '2026-06-23'),
(12, 'RCT-2026-093', '2026-06-03', 7300.00, 0.00, 7300.00, 3, '2026-07-03', '2026-06-05'),
(12, 'RCT-2026-094', '2026-06-16', 7300.00, 0.00, 7300.00, 3, '2026-07-16', '2026-06-18'),
(12, 'RCT-2026-095', '2026-06-24', 7300.00, 0.00, 7300.00, 3, '2026-07-24', '2026-06-26'),
(13, 'RCT-2026-096', '2026-06-01', 7100.00, 1775.00, 5325.00, 2, '2026-06-21', '2026-06-03'),
(13, 'RCT-2026-097', '2026-06-12', 7100.00, 1775.00, 5325.00, 2, '2026-07-02', '2026-06-14'),
(14, 'RCT-2026-098', '2026-06-07', 6900.00, 0.00, 6900.00, 3, '2026-07-07', '2026-06-09'),
(14, 'RCT-2026-099', '2026-06-19', 6900.00, 0.00, 6900.00, 3, '2026-07-19', '2026-06-21'),
(15, 'RCT-2026-100', '2026-06-09', 7600.00, 1900.00, 5700.00, 2, '2026-06-29', '2026-06-11'),
(15, 'RCT-2026-101', '2026-06-20', 7600.00, 1900.00, 5700.00, 2, '2026-07-10', '2026-06-22'),


(1, 'RCT-2026-102', '2026-07-01', 7500.00, 3750.00, 3750.00, 3, '2026-07-31', '2026-07-02'),
(1, 'RCT-2026-103', '2026-07-05', 7500.00, 3750.00, 3750.00, 3, '2026-08-04', '2026-07-06'),
(2, 'RCT-2026-104', '2026-07-02', 7500.00, 2250.00, 3000.00, 2, '2026-07-22', NULL),
(3, 'RCT-2026-105', '2026-07-03', 6600.00, 1320.00, 5280.00, 3, '2026-08-02', '2026-07-05'),
(4, 'RCT-2026-106', '2026-07-04', 7200.00, 720.00, 6480.00, 3, '2026-08-03', '2026-07-06'),
(5, 'RCT-2026-107', '2026-07-01', 7500.00, 0.00, 7500.00, 1, '2026-07-11', '2026-07-02'),
(5, 'RCT-2026-108', '2026-07-06', 7500.00, 0.00, 7500.00, 1, '2026-07-16', '2026-07-07'),



(2, 'RCT-2026-109', '2026-07-10', 7500.00, 2250.00, 5500.00, 2, '2026-07-30', '2026-07-10'),

(6, 'RCT-2026-110', '2026-07-12', 6600.00, 0.00, 6800.00, 1, '2026-07-22', '2026-07-12');
GO

------Write a query to retrieve last TOP 5 those Applicant record whose marks is Greater than 90

SELECT TOP 5 * FROM ApplicantResult
WHERE MARKS >= 90
ORDER BY ApplicantID DESC
GO
--Write a query to retrieve those Payment record whose Payment date is later then 01/06/2026 or TotalAmount is more than 7000 and TotalAmount must be greater than sum of Total PaidAmount and ScholarshipAmount

SELECT * FROM Payment
WHERE PaymentDate >'2026-06-01'
OR TotalAmount >7000
AND TotalAmount>ScholarshipAmount + PaidAmount









----Write a query to retrieve Student whose name has one of the following characters: z, e, i, o.

SELECT FirstName+' '+LastName AS StudentName
FROM  Student
WHERE FirstName+' '+LastName LIKE '%z%'
OR FirstName+' '+LastName LIKE '%e%'
OR FirstName+' '+LastName LIKE '%i%'
OR FirstName+' '+LastName LIKE '%o%'
GO

--Write a query to retrieve those Application whose Applicant states are all except ‘DHA’, ‘RAN’, ‘CTG’ and DoB are later than 01/01/2001. 	

SELECT a.ApplicantID,a.City,a.States,r.MARKS
FROM Applicant AS a JOIN ApplicantResult AS r ON a.ApplicantID=r.ApplicantID
WHERE a.States NOT IN ('DHA', 'RAN', 'CTG')
AND r.MARKS>80
GO

---Write a query to retrieve PaymentDate '2026-06-01' AND '2026-06-30' From Payment.
SELECT * FROM Payment
WHERE PaymentDate BETWEEN '2026-06-01' AND '2026-06-30'
GO

---Write a query to retrieve Applicant whose city starts with ‘CTG’
SELECT * FROM Applicant 
WHERE City LIKE 'BHO%'
GO

--Write a query to find all Applicant whose first letter of state starts with D and the next letter is one of A through J.  
SELECT * FROM Applicant 
WHERE States LIKE 'D[A-J][A-J]'
GO

--Write a query to find all Applicant whose first letter of state starts with N and the next letter is not in K through Y.  
SELECT * FROM Applicant 
WHERE States LIKE 'D[^K-Y][^K-Y]'
GO

--Write a query to retrieve 21 through 30 records of Student.	
SELECT StudentID,FirstName,LastName,DeptID FROM Student
ORDER BY StudentID OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY
GO

--Write a group query to retrieve Payment those average of Payment total is more than 3000.       
SELECT StudentID,AVG(PaidAmount) AS AvgPaidTotal FROM Payment GROUP BY StudentID
HAVING AVG(PaidAmount)>3000
GO

--Example of CUBE operator.  
SELECT StudentID,PaymentID,SUM(PaidAmount) AS PaidTotal FROM Payment 
GROUP BY CUBE(StudentID,PaymentID)
GO

--Give an example of ROLLUP operator
SELECT StudentID,PaymentID, SUM(PaidAmount) AS PaidTotal FROM Payment 
GROUP BY ROLLUP(StudentID,PaymentID)

--Example of GROUPING SETS operator	
SELECT StudentID,PaymentID, SUM(PaidAmount) AS PaidTotal FROM Payment 
GROUP BY GROUPING SETS((StudentID),(PaymentID),())

--Example of OVER clause
SELECT StudentID,PaidAmount, SUM(PaidAmount) OVER() GrandTotalofAllPaidAmount,
AVG(PaidAmount) OVER(PARTITION BY StudentID) AS PaymentAverage
FROM Payment

--Write a subquery to retrieve Applicant who are in Student List
SELECT * FROM Applicant WHERE ApplicantID In(
SELECT DISTINCT ApplicantID FROM Student
)

--Example of ANY keyword.
SELECT * FROM Payment WHERE TotalAmount>ANY
(SELECT TotalAmount FROM Payment WHERE StudentID=15)

--Example of ALL keyword
SELECT * FROM Payment WHERE TotalAmount>ALL
(SELECT TotalAmount FROM Payment WHERE StudentID=15)

--Example of SOME keyword
SELECT * FROM Payment WHERE TotalAmount>SOME
(SELECT TotalAmount FROM Payment WHERE StudentID=15)



--SEARCH CASE function
SELECT PaymentID,StudentID,ReceiptNumber,PaymentDate,TotalAmount,ScholarshipAmount,PaidAmount,
(TotalAmount - ScholarshipAmount - PaidAmount) AS DueAmount,
 CASE 
        WHEN (TotalAmount - ScholarshipAmount - PaidAmount) = 0 THEN 'No Due'
        WHEN (TotalAmount - ScholarshipAmount - PaidAmount) > 0 THEN 'Due'
		ELSE 'OverPaid'
    END AS DueStatus
FROM Payment
ORDER BY DueStatus, PaymentID;
GO

--EXISTS operator
SELECT s.StudentID,s.FirstName + ' ' + s.LastName AS StudentName
FROM Student AS s
WHERE EXISTS (SELECT * FROM Payment p 
WHERE p.StudentID = s.StudentID 
)
GO

--Correlated subquery
SELECT p1.PaymentID,p1.StudentID,p1.TotalAmount,
(SELECT AVG(p2.TotalAmount) FROM Payment p2 
WHERE p2.StudentID = p1.StudentID) AS AvgTotal
FROM Payment p1
WHERE p1.TotalAmount > 
(SELECT AVG(p2.TotalAmount) FROM Payment p2 
WHERE p2.StudentID = p1.StudentID);
GO


--CTE
WITH 
PaymentStats AS (
SELECT StudentID,
        COUNT(*) AS PaymentCount,
        SUM(PaidAmount) AS TotalPaid,
        AVG(PaidAmount) AS AvgPaid
    FROM Payment
    GROUP BY StudentID
),
StudentInfo AS (
    SELECT 
        s.StudentID,
        s.FirstName + ' ' + s.LastName AS StudentName,
        d.DeptName
    FROM Student s
    JOIN Department d ON s.DeptID = d.DeptID
)
SELECT 
    si.StudentName,
    si.DeptName,
    ps.PaymentCount,
    ps.TotalPaid,
    ps.AvgPaid
FROM StudentInfo si
LEFT JOIN PaymentStats ps ON si.StudentID = ps.StudentID
ORDER BY ps.TotalPaid DESC;
GO

--Insert a Applicant record
USE StudentDB
GO
INSERT INTO Applicant (ApplicantNo, FirstName, LastName, Email, City, States, DoB)
VALUES
('APP061', 'Tanjim', 'Khan', 'tanjim@email.com', 'Rajbari', 'RAJ', '2001-07-07')
GO

---Delete a Applicant record
USE StudentDB
GO
DELETE FROM Applicant WHERE ApplicantID=10060
GO

--CASE function
SELECT PaymentID,PaymentDate,TermsID,
CASE TermsID
WHEN 1 THEN 'Due 10 days'
WHEN 2 THEN 'Due 20 days'
WHEN 3 THEN 'Due 20 days'
WHEN 4 THEN 'Due 20 days'
WHEN 5 THEN 'Due 20 days'
END AS TermsDescription
FROM Payment

---IIF functions
SELECT PaymentID,StudentID,PaidAmount,PaymentClearedDate,
IIF(PaymentClearedDate IS NOT NULL, 'Cleared', 'Pending') AS PaymentStatus
FROM Payment
GO

---CHOOSE functions
SELECT PaymentID,PaymentDate,
CHOOSE(DATEPART(WEEKDAY, PaymentDate), 
'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday') AS WeekdayName
FROM Payment
GO
--COALESCE functions 
SELECT PaymentDate,COALESCE(PaymentDate,'1900-01-01') AS NewDate FROM Payment 
--ISNULL functions
SELECT PaymentDate,ISNULL(PaymentDate,'1900-01-01') AS NewDate FROM Payment


--Ranking functions- ROW_NUMBER
SELECT ROW_NUMBER() OVER (PARTITION BY StudentID ORDER BY PaymentDate) AS PaymentNo,
StudentID,PaymentID,PaidAmount,PaymentDate
FROM Payment
ORDER BY StudentID, PaymentNo
GO

-- RANK
SELECT PaymentID,PaidAmount,
RANK() OVER (ORDER BY PaidAmount DESC) AS RankNum
FROM Payment

-- DENSE_RANK
SELECT PaymentID,PaidAmount,
DENSE_RANK() OVER (ORDER BY PaidAmount DESC) AS DenseRank
FROM Payment
GO

--NTILE
SELECT PaymentID,StudentID,PaidAmount,
NTILE(3) OVER (ORDER BY PaidAmount DESC) AS ThreeTile,
NTILE(4) OVER (ORDER BY PaidAmount DESC) AS FourTile
FROM Payment
ORDER BY PaidAmount DESC
GO

-- First Value
SELECT StudentID,PaymentID,PaidAmount,PaymentDate,
FIRST_VALUE(PaidAmount) OVER (PARTITION BY StudentID ORDER BY PaymentDate) AS FirstPaymentAmount

FROM Payment
ORDER BY StudentID, PaymentDate
GO

-- Last Value
SELECT StudentID,PaymentID,PaidAmount,PaymentDate,
LAST_VALUE(PaidAmount) OVER (PARTITION BY StudentID ORDER BY PaymentDate) AS LastPaymentAmount

FROM Payment
ORDER BY StudentID, PaymentDate
GO

-- LEAD 
SELECT StudentID, PaymentID, PaidAmount,PaymentDate,
LEAD(PaidAmount) OVER (PARTITION BY StudentID ORDER BY PaymentDate) AS NextPaymentAmount
FROM Payment
ORDER BY StudentID, PaymentDate
GO

-- LAG
SELECT StudentID, PaymentID, PaidAmount,PaymentDate,
LAG(PaidAmount) OVER (PARTITION BY StudentID ORDER BY PaymentDate) AS PreviousPaymentAmount
FROM Payment
ORDER BY StudentID, PaymentDate
GO

--PERCENT_RANK
SELECT PaymentID,StudentID,PaidAmount,
PERCENT_RANK() OVER (ORDER BY PaidAmount) AS PercentRank
FROM Payment
GO

-- CUME_DIST
SELECT PaymentID,StudentID,PaidAmount,
CUME_DIST() OVER (ORDER BY PaidAmount) AS CumulativeDist
FROM Payment
GO

-- PERCENTILE_CONT
SELECT PaymentID,StudentID,PaidAmount,
PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY PaidAmount) OVER () AS ContAmount
FROM Payment
GO

-- PERCENTILE_DISC
SELECT PaymentID,StudentID,PaidAmount,
PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY PaidAmount) OVER () AS DiscAmount
FROM Payment
GO

USE StudentDB
GO

---CAST


SELECT 50/CAST(100 AS decimal(3)) AS DecNumber;
GO
SELECT PaidAmount/CAST(100 AS decimal (3) )AS AmountIn  FROM Payment;
GO
USE StudentDB
GO
SELECT CAST(StudentID AS VARCHAR) AS IdVar
FROM Student;
GO
--Try Cast
SELECT TRY_CAST('123' AS DATE) AS Result
SELECT TRY_CAST('123' AS int) AS Result
SELECT TRY_CAST('2026-03-25' AS DATE) AS Result
GO
--Convert
SELECT PaymentID, PaymentDate,
CONVERT(VARCHAR, PaymentDate, 101) AS US_Date,
CONVERT(VARCHAR, PaymentDate, 103) AS UK_Date,
CONVERT(VARCHAR, PaymentDate, 106) AS DateOnly,
CONVERT(VARCHAR, PaymentDate, 120) AS DateTimeFull
FROM Payment
GO
--Try Convert
SELECT TRY_CONVERT(DATE, '25-03-2026', 103) AS UK_Format
GO

--Aggregate Function
SELECT 'OVERALL SUMMARY' AS ReportType,
 COUNT(*) AS TotalPayments,
 SUM(PaidAmount) AS TotalAmount,
 AVG(PaidAmount) AS AvgAmount,
 MIN(PaidAmount) AS MinAmount,
 MAX(PaidAmount) AS MaxAmount
 FROM Payment
GO

----INSERT INTO
INSERT INTO PaymentArchive 
SELECT * FROM Payment
WHERE ScholarshipAmount - PaidAmount - TotalAmount <>0
GO
---Justify---
SELECT * FROM PaymentArchive

-----SELECT INTO
SELECT * INTO PaymentCopy
FROM Payment
GO
---Justify----
SELECT * FROM PaymentCopy

--Variables (DECLARE, SET, SELECT) 
USE StudentDB
GO
DECLARE @Name VARCHAR(100);
DECLARE @Amount DECIMAL(10,2);

SELECT @Name = FirstName FROM Student WHERE StudentID = 1;
SELECT @Amount = PaidAmount FROM Payment WHERE PaymentID = 1;

SET @Amount = ISNULL(@Amount, 0);

PRINT 'Name: ' + @Name;
PRINT 'Amount: ' + CAST(@Amount AS VARCHAR);
GO

---Table Variable (@table)
DECLARE @StudentTable TABLE (
 StudentID INT,
 StudentName VARCHAR(100),
 Email VARCHAR(255)
);	
INSERT INTO @StudentTable VALUES (1,'Alamin','alamin@email.com');
SELECT * FROM @StudentTable;
GO

--Local Temporary Table (#table)

CREATE TABLE #Temp (ID INT, Name VARCHAR(100));

INSERT INTO #Temp VALUES (1, 'Rafiq'), (2, 'Sharmin');
--Test---
SELECT * FROM #Temp;


-- Global Temporary Table (##table)
CREATE TABLE ##GlobalStudent (
    ID INT,
    Name VARCHAR(50),
    Department VARCHAR(50)
);

INSERT INTO ##GlobalStudent VALUES (1, 'Rafiq', 'CSE');
INSERT INTO ##GlobalStudent VALUES (2, 'Sharmin', 'CSE');
----Test-----
SELECT * FROM ##GlobalStudent;
GO

---CURSOR-----
USE StudentDB
GO
DECLARE @VarPaymentID INT, 
        @VarDueAmount DECIMAL(10,2), 
        @UpdateCount INT

SET @UpdateCount = 0

DECLARE pay_Cursor CURSOR
FOR
SELECT PaymentID, 
    (TotalAmount - ScholarshipAmount - PaidAmount) AS DueAmount
FROM Payment
WHERE (TotalAmount - ScholarshipAmount - PaidAmount) > 0

OPEN pay_Cursor

FETCH NEXT FROM pay_Cursor INTO @VarPaymentID, @VarDueAmount

WHILE @@FETCH_STATUS <> -1
BEGIN
IF @VarDueAmount > 500
BEGIN
UPDATE Payment 
SET PaidAmount = PaidAmount + 100,
PaymentClearedDate = GETDATE()
WHERE PaymentID = @VarPaymentID
        
SET @UpdateCount = @UpdateCount + 1

END
    
FETCH NEXT FROM pay_Cursor INTO @VarPaymentID, @VarDueAmount
END

CLOSE pay_Cursor
DEALLOCATE pay_Cursor

PRINT ''
PRINT CONVERT(VARCHAR, @UpdateCount) + ' rows updated'
GO


---PROCEDURE

CREATE PROCEDURE spEnrollmentManage
    @EnrollmentID INT = NULL,
    @StudentID INT = NULL,
    @CourseID INT = NULL,
    @Grade CHAR(2) = NULL,
    @Semester VARCHAR(20) = NULL,
    @opType CHAR(1),
    @OutputMessage VARCHAR(200) OUTPUT,
    @OutputCount INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- S = SELECT
    IF @opType = 'S'
    BEGIN
        SELECT 
            e.EnrollmentID,
            s.FirstName + ' ' + s.LastName AS StudentName,
            c.CourseName,
            e.Semester,
            e.Grade,
            i.InstructorName AS Instructor
        FROM Enrollment e
        JOIN Student s ON e.StudentID = s.StudentID
        JOIN Course c ON e.CourseID = c.CourseID
        LEFT JOIN Instructor i ON c.InstructorID = i.InstructorID
        ORDER BY e.EnrollmentID;
        
        SET @OutputCount = @@ROWCOUNT;
        RETURN;
    END
    
    -- I = INSERT
    IF @opType = 'I'
    BEGIN
        INSERT INTO Enrollment (StudentID, CourseID, Grade, Semester)
        VALUES (@StudentID, @CourseID, @Grade, @Semester);
        
        SET @OutputMessage = 'Enrollment Added: Student ' + CAST(@StudentID AS VARCHAR) + 
                             ', Course ' + CAST(@CourseID AS VARCHAR);
        SET @OutputCount = @@ROWCOUNT;
    END
    
    -- U = UPDATE
    IF @opType = 'U'
    BEGIN
        UPDATE Enrollment 
        SET Grade = @Grade 
        WHERE EnrollmentID = @EnrollmentID;
        
        SET @OutputMessage = 'Grade Updated: ' + @Grade;
        SET @OutputCount = @@ROWCOUNT;
    END
    
    -- D = DELETE
    IF @opType = 'D'
    BEGIN
        DELETE FROM Enrollment WHERE EnrollmentID = @EnrollmentID;
        
        SET @OutputMessage = 'Enrollment Deleted: ID ' + CAST(@EnrollmentID AS VARCHAR);
        SET @OutputCount = @@ROWCOUNT;
    END
    
    -- O = OUTPUT
    IF @opType = 'O'
    BEGIN
        SELECT @OutputMessage = c.CourseName 
        FROM Enrollment e
        JOIN Course c ON e.CourseID = c.CourseID
        WHERE e.EnrollmentID = @EnrollmentID;
        
        SET @OutputCount = @@ROWCOUNT;
    END
    
    -- R = RETURN
    IF @opType = 'R'
    BEGIN
        SELECT @OutputCount = COUNT(*) FROM Enrollment WHERE StudentID = @StudentID;
        RETURN @OutputCount;
    END
END;
GO

USE StudentDB;
GO

-- Justify---

--- SELECT (S) ---
EXEC spEnrollmentManage '', '', '', '', '', 'S', '', '';
GO

--- INSERT (I) ---
EXEC spEnrollmentManage '', '1', '1', '', 'Spring 2024', 'I', '', '';
GO

--- UPDATE (U) ---
EXEC spEnrollmentManage '1', '', '', 'A', '', 'U', '', '';
GO

--- DELETE---
EXEC spEnrollmentManage '1', '', '', '', '', 'D', '', '';
GO

--- OUTPUT (O) ---
DECLARE @courseName VARCHAR(200);
EXEC spEnrollmentManage '1', '', '', '', '', 'O', @courseName OUTPUT, '';
PRINT @courseName;
GO

--- RETURN ---
DECLARE @enrollCount INT;
EXEC @enrollCount = spEnrollmentManage '', '1', '', '', '', 'R', '', '';
SELECT @enrollCount AS EnrollmentsForStudent1;
GO


----Error Handling Try....Catch
USE StudentDB
GO
BEGIN TRY
    BEGIN TRANSACTION;
    
    DECLARE @StudentID INT;
    

    INSERT INTO Student (FirstName, LastName, Email, DeptID)
    VALUES ('Rafiq', 'Islam', 'rafiq.islam@student.edu', 1);
    
    SET @StudentID = SCOPE_IDENTITY();
    

    INSERT INTO Enrollment (StudentID, CourseID, Semester)
    VALUES (@StudentID, 1, 'Spring 2024');
    
    COMMIT TRANSACTION;
    PRINT 'Student and Enrollment added successfully';
    PRINT 'Student ID: ' + CAST(@StudentID AS VARCHAR);
    
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    
    PRINT 'Transaction failed';
    PRINT 'Error: ' + ERROR_MESSAGE();
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR);
    PRINT 'Error Line: ' + CAST(ERROR_LINE() AS VARCHAR);
END CATCH
GO


---Error Handling: Transaction 
USE StudentDB
GO

BEGIN
BEGIN TRY
    BEGIN TRAN
    
    DECLARE @myIdentity INT, @myRowcount INT;

    INSERT INTO Student (FirstName, LastName, Email, DeptID, EnrollmentDate)
    VALUES ('Kayum', 'Hossain', 'Kayum@email.com', 1, GETDATE())
    
    SET @myIdentity = @@IDENTITY      
    SET @myRowcount = @@ROWCOUNT      
    
    
    IF @myRowcount = 1
    BEGIN
        INSERT INTO Enrollment (StudentID, CourseID, Grade, Semester)
        VALUES 
        (@myIdentity, 1, NULL, 'Spring 2024'),
        (@myIdentity, 2, NULL, 'Spring 2024')
        
        PRINT 'Student and Enrollment added successfully';
        PRINT 'Student ID: ' + CAST(@myIdentity AS VARCHAR);
    END
    
    COMMIT TRAN
    PRINT 'Transaction committed successfully';
    
END TRY
BEGIN CATCH
    -- Error Information
    SELECT 
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_LINE() AS ErrorLine,
        ERROR_SEVERITY() AS Severity
    
    ROLLBACK TRAN
    PRINT 'Transaction rolled back due to error';
END CATCH
END
GO


------THROW
USE StudentDB
GO
CREATE PROC spInsertPayment
    @StudentID INT, 
    @ReceiptNumber VARCHAR(50),
    @PaymentDate DATE,
    @TotalAmount DECIMAL(10,2),
    @PaidAmount DECIMAL(10,2),
    @ScholarshipAmount DECIMAL(10,2),
    @TermsID INT,
    @PaymentDueDate DATE
AS
BEGIN

    IF EXISTS(SELECT * FROM Student WHERE StudentID = @StudentID)
    BEGIN
        INSERT INTO Payment (StudentID, ReceiptNumber, PaymentDate, TotalAmount, 
                             PaidAmount, ScholarshipAmount, TermsID, PaymentDueDate)
        VALUES (@StudentID, @ReceiptNumber, @PaymentDate, @TotalAmount, 
                @PaidAmount, @ScholarshipAmount, @TermsID, @PaymentDueDate);
        
        PRINT 'Payment inserted successfully';
    END
    ELSE
    BEGIN
        THROW 50001, 'Not a valid student', 1;
    END
END;
GO

-----Justify---
EXEC spInsertPayment 999, 'RCP4', '2026-03-07', 1000, 1000, 0, 1, '2026-04-07';
GO