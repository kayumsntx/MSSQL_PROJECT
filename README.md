StudentDB Database

1.	Create a 3NF database and tables by writing sql script as follows: Database Name: StudentDB, Data File Name: StudentDB _Data_1, Log File Name: StudentDB _Log_1, Location: default database file location, Size (data file: 25mb, log file: 2mb), Maximum size (data file: 100mb, log file: 50mb), File growth (data file: 5%, log file: 1mb) ------ DDL, Line: 7

| APPLICANT_ID | APPLICATION_NO | FIRST_NAME | LAST_NAME | EMAIL              | City       | States | DoB        | APPLY_DATE   |
|--------------|----------------|------------|-----------|--------------------|------------|--------|------------|--------------|
| 10000        | APP01          | Rafiq      | Islam     | rafiq@email.com    | Dhaka      | DHA    | 2000-01-01 | 2026-03-14   |
| 10001        | APP02          | Shamim     | Akter     | shamim@email.com   | Rangpur    | RAN    | 2000-06-01 | 2026-03-14   |
| 10002        | APP03          | Kamal      | Hossain   | kamal@email.com    | Khulna     | KHU    | 1996-01-26 | 2026-03-14   |
| 10003        | APP04          | Imran      | Khan      | imran@email.com    | Manikganj  | MNK    | 2001-02-15 | 2026-03-14   |
| 10004        | APP05          | Rakib      | Hasan     | rakib@email.com    | Rajshahi   | RAJ    | 1990-05-31 | 2026-03-14   |
| 10005        | APP06          | Hasib      | Rahman    | hasib@email.com    | Chattogram | CTG    | 2009-08-27 | 2026-03-14   |

2.	CREATE TABLE ----- DDL, Line: 34 – 144
3.	INDEX CREATE --------DDL, Line: 194
4.	DROP INDEX--------DDL, Line: 201
5.	Data Insert--------DML, Line:
6.	Select all from ApplicantResult-----DML, Line:
7.	Write a query to retrieve last TOP 5 those Applicant record whose marks is Greater than 90.----DML, Line: 255
8.	GROUPING function------DML, Line 147
9.	Write a query to retrieve those Applicant record whose Apply date is later then 14/03/2026 or marks is more than 70 and age must be less than 30.-----DML, Line:  
10.	Insert a Applicant Record------DML, Line:
11.	Insert INTO ApplicantResult table From Applicant table
12.	Update marks where applicant id
13.	Write a query to retrieve those Payment record whose Payment date is later then 01/06/2026 or TotalAmount is more than 7000 and TotalAmount must be greater than sum of Total PaidAmount and ScholarshipAmount------DML, Line: 404 
14.	Write a query to retrieve Student whose name has one of the following characters: a, e, i, o, u.--DML, Line: 278
15.	Write a query to retrieve those Application whose Applicant states are all except ‘DHA’, ‘RAN’, ‘CTG’ and Marks are greater than 80. ----DML, Line: 288	
16.	Write a query to retrieve PaymentDate '2026-06-01' AND '2026-06-30' From Payment.---DML, Line:449 
17.	Write a query to retrieve Applicant whose city starts with ‘CTG’.---DML, Line: 453
18.	Write a query to find all Applicant whose first letter of state starts with D and the next letter is one of A through J.  ---DML, Line: 457
19.	Write a query to find all Applicant whose first letter of state starts with N and the next letter is not in K through Y.  	----DML, Line: 461
20.	Write a query to retrieve 21 through 30 records of Student. ----DML, Line: 465
21.	Write a group query to retrieve Payment those average of Payment total is more than 3000.—DML, Line: 475 
22.	 Example of CUBE operator.  --DML, Line: 480
23.	Example of ROLLUP operator.  ---DML, Line: 485	
24.	Example of GROUPING SETS operator	-----DML, Line: 489
25.	Example of OVER clause.----DML, Line: 493
26.	Write a subquery to retrieve Applicant who are in Student List.-----DML, Line: 498
27.	Example of ANY keyword.---DML, Line: 503
28.	Example of ALL keyword.---DML, Line: 507
29.	Example of SOME keyword.---DML, Line: 845
30.	SEARCH CASE function(CASE Expression)---DML, Line: 491
31.	Example of EXISTS operator---DML, Line: 503
32.	Example of correlated subquery.—DML, Line: 511
33.	Example on CTE.—DML, Line: 522
34.	Insert a Applicant record.---DML, Line: 551
35.	Delete a Applicant record.---DML, Line: 559
36.	TRUNCATE TABLE PaymentArchive----DDL, Line: 254 	
37.	INSERT INTO PaymentArchive---DML, Line:714
38.	DROP TABLE PaymentCopy----DDL, Line: 256
39.	SELECT INTO PaymentCopy-----
40.	MERGE-----
41.	Aggregate Functions- COUNT(), SUM(), MAX(), MIN(), AVG() ---DML, Line: 704
42.	Date Function- GETDATE(), DATEADD(), DATEDIFF(), DATENAME(), DATEPART(),        EOMONTH(), ISDATE()	, YEAR()/MONTH()/DAY()
43.	String Function- LEFT(), RIGHT(), SUBSTRING(), LEN(), LTRIM(), RTRIM(), UPPER(), LOWER(), CHARINDEX(), PATINDEX(), REPLACE(), SPACE(), REPLICATE()			
44.	Conversion Function- STR()	
45.	Math Function- ROUND(), CEILING(), FLOOR(), ABS(), POWER(), SQRT()			
46.	CASE function.----DML, Line:565 
47.	IIF functions---DML, Line: 576
48.	CHOOSE functions---DML, Line: 582
49.	COALESCE functions ---- DML, Line:588
50.	ISNULL functions---DML, Line: 590
51.	Ranking functions / Window Function - ROW_NUMBER---DML, Line: 592
52.	Ranking functions / Window Function - RANK------ DML, Line: 599
53.	Ranking functions / Window Function DENSE_RANK----DML, Line: 604
54.	Ranking functions / Window Function NTILE----DML, Line: 610
55.	Analytic functions- FIRST_VALUE----DML, Line: 618
56.	Analytic functions- LAST_VALUE----DML, Line: 626
57.	Analytic functions- LEAD----DML, Line: 634
58.	Analytic functions- LAG----DML, Line: 641
59.	Analytic Functions- PERCENT_RANK—DML, Line: 648
60.	Analytic Functions- CUME_DIST----DML, Line: 654
61.	Analytic Functions- PERCENTILE_CONT----DML, Line: 660
62.	Analytic Functions- PERCENTILE_DISC----DML, Line: 666
63.	Conversion Function- CAST (ANSI SQL Standard) ---DML, Line: 675
64.	Conversion Function- Try Cast---DML, Line: 687
65.	Conversion Function- Convert (SQL Server-specific) ---DML, Line: 692
66.	Conversion Function- Try Convert---DML, Line: 701
67.	Get current date and time-----DDL, Line: 230
68.	CREATE SEQUENCE---DDL, Line: 201
69.	ALTER SEQUENCE---DDL, Line: 212
70.	DROP SEQUENCE---DDL, Line: 225
71.	ALTER TABLE DROP CONSTRAINT---DDL, Line: 
72.	CREATE VIEW---DDL, Line: 263
73.	CREATE VIEW WITH ENCRYPTION---DDL, Line: 280
74.	CREATE VIEW WITH SCHEMABINDING ---DDL, Line: 302
75.	CREATE VIEW WITH SCHEMABINDING, ENCRYPTION—DDL, Line: 323
76.	CREATE VIEW WITH CHECK OPTION—DDL, Line: 344
77.	ALTER VIEW—DDL, Line: 362
78.	DROP VIEW—DDL, Line: 366
79.	Variables (DECLARE, SET, SELECT) ----DML, Line: 729
80.	Table Variable (@table)---DML, Line: 744
81.	Local Temporary Table (#table)---DML, Line:754
82.	Global Temporary Table (##table)---DML, Line: 763
83.	CURSOR. DML, Line: 776
84.	Error Handling: Try-Catch.---DML, Line: 940
85.	Error Handling: Transaction. ---DML, Line: 975
86.	THROW. DML, Line:1022
87.	PROCEDURE—DML, Line: 820
88.	Trigger (INSERT, UPDATE, DELETE)------ DDL, Line: 150
(i)	INSERT into Student Table From ApplicantResult, Where Applicant Marks is equal or grater than 50.
(ii)	Update
(iii)	Delete a student from student table who will not continue the course.

89.	Example of using @@IDENTITY, @@ROWCOUNT
90.	CREATE LOGIN------ DDL, Line: 374
91.	ALTER LOGIN------- DDL, Line: 374
92.	DROP LOGIN----- DDL, Line: 374
93.	CREATE USER------ DDL, Line: 374
94.	CREATE ROLE---- DDL, Line: 374
95.	GRANT----- DDL, Line: 374
96.	Revoke Permission------ DDL, Line: 374
97.	Deny Permission----- DDL, Line: 374
	
