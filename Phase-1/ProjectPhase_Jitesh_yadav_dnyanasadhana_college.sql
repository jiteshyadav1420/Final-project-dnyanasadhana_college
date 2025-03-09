-- Pick Your Unique Database Theme
-- Create 25 Tables with Attributes, Datatypes, and Constraints
-- Each table must have at least 10 attributes with appropriate data types.
-- Populate each table with at least 20 records 
-- write queries

-- create database of dnyanasadhana_college;

create database dnyanasadhana_college;

-- Use your database
use dnyanasadhana_college;

-- show all table 
show tables;

-- drop your database
drop database dnyanasadhana_college;


-- 1. Students Table
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    Address VARCHAR(100),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Enrollment_Date DATE,
    Department_ID INT
   
);

drop table students;

INSERT INTO Students (Student_ID, First_Name, Last_Name, DOB, Gender, Address, Phone_Number, Email, Enrollment_Date, Department_ID) 
VALUES
(1, 'Alice', 'Johnson', '2001-03-15', 'Female', '123 Maple St', '1234567890', 'alice.johnson@example.com', '2021-09-01', 1),
(2, 'Bob', 'Smith', '2000-07-22', 'Male', '456 Oak St', '1234567891', 'bob.smith@example.com', '2021-09-01', 2),
(3, 'Charlie', 'Brown', '2002-01-10', 'Male', '789 Pine St', '1234567892', 'charlie.brown@example.com', '2022-09-01', 1),
(4, 'Diana', 'Evans', '2001-11-25', 'Female', '234 Elm St', '1234567893', 'diana.evans@example.com', '2021-09-01', 3),
(5, 'Ethan', 'Green', '1999-08-30', 'Male', '567 Birch St', '1234567894', 'ethan.green@example.com', '2020-09-01', 4),
(6, 'Fiona', 'Hill', '2003-05-18', 'Female', '890 Cedar St', '1234567895', 'fiona.hill@example.com', '2022-09-01', 2),
(7, 'George', 'Adams', '2001-12-12', 'Male', '345 Spruce St', '1234567896', 'george.adams@example.com', '2021-09-01', 3),
(8, 'Hannah', 'Morris', '2002-04-06', 'Female', '678 Walnut St', '1234567897', 'hannah.morris@example.com', '2022-09-01', 5),
(9, 'Ian', 'Walker', '2000-09-30', 'Male', '901 Chestnut St', '1234567898', 'ian.walker@example.com', '2020-09-01', 4),
(10, 'Jessica', 'Taylor', '2003-02-17', 'Female', '123 Redwood St', '1234567899', 'jessica.taylor@example.com', '2022-09-01', 5),
(11, 'Kyle', 'Harris', '2001-07-09', 'Male', '456 Cypress St', '1234567800', 'kyle.harris@example.com', '2021-09-01', 6),
(12, 'Laura', 'Davis', '2002-03-22', 'Female', '789 Fir St', '1234567801', 'laura.davis@example.com', '2022-09-01', 7),
(13, 'Michael', 'Thompson', '1999-11-15', 'Male', '234 Willow St', '1234567802', 'michael.thompson@example.com', '2020-09-01', 6),
(14, 'Natalie', 'Clark', '2003-01-28', 'Female', '567 Magnolia St', '1234567803', 'natalie.clark@example.com', '2022-09-01', 8),
(15, 'Oliver', 'Martinez', '2000-06-03', 'Male', '890 Aspen St', '1234567804', 'oliver.martinez@example.com', '2020-09-01', 9),
(16, 'Paula', 'Anderson', '2001-10-15', 'Female', '345 Maple St', '1234567805', 'paula.anderson@example.com', '2021-09-01', 8),
(17, 'Quincy', 'Rodriguez', '2002-12-20', 'Male', '678 Oak St', '1234567806', 'quincy.rodriguez@example.com', '2022-09-01', 9),
(18, 'Rachel', 'Lewis', '2000-04-25', 'Female', '901 Pine St', '1234567807', 'rachel.lewis@example.com', '2020-09-01', 10),
(19, 'Samuel', 'Young', '2003-08-11', 'Male', '123 Birch St', '1234567808', 'samuel.young@example.com', '2022-09-01', 10),
(20, 'Tina', 'Hall', '2001-09-30', 'Female', '456 Elm St', '1234567809', 'tina.hall@example.com', '2021-09-01', 7);


-- 2. Departments Table
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100),
    Building_Name VARCHAR(50),
    Budget DECIMAL(10, 2),
    Established_Year INT,
    Head_Of_Department VARCHAR(50),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Office_Room VARCHAR(20),
    Faculty_Count INT
    
);

drop table Departments;

INSERT INTO Departments (Department_ID, Department_Name, Building_Name, Budget, Established_Year, Head_Of_Department, Phone_Number, Email, Office_Room, Faculty_Count)
VALUES
(1, 'Computer Science', 'Engineering Building', 500000.00, 1995, 'Dr. John Smith', '1234567890', 'cs@university.com', 'B101', 35),
(2, 'Mechanical Engineering', 'Science Hall', 450000.00, 1987, 'Dr. Emily Taylor', '1234567891', 'me@university.com', 'A102', 30),
(3, 'Civil Engineering', 'Tech Building', 400000.00, 1990, 'Dr. Michael Green', '1234567892', 'ce@university.com', 'C201', 40),
(4, 'Electrical Engineering', 'Engineering Building', 480000.00, 1992, 'Dr. Lisa Brown', '1234567893', 'ee@university.com', 'D303', 28),
(5, 'Chemical Engineering', 'Science Hall', 420000.00, 1985, 'Dr. James White', '1234567894', 'che@university.com', 'E404', 25),
(6, 'Physics', 'Science Hall', 350000.00, 1965, 'Dr. Robert Johnson', '1234567895', 'phy@university.com', 'F505', 22),
(7, 'Biology', 'Life Sciences Building', 300000.00, 1990, 'Dr. Sarah Harris', '1234567896', 'bio@university.com', 'G606', 18),
(8, 'Chemistry', 'Science Hall', 380000.00, 1980, 'Dr. David Clark', '1234567897', 'chem@university.com', 'H707', 30),
(9, 'Mathematics', 'Math Building', 250000.00, 1975, 'Dr. Linda Lewis', '1234567898', 'math@university.com', 'I808', 24),
(10, 'English Literature', 'Humanities Building', 200000.00, 1998, 'Dr. Brian Allen', '1234567899', 'eng@university.com', 'J909', 15),
(11, 'History', 'Humanities Building', 180000.00, 1992, 'Dr. Patricia King', '1234567800', 'his@university.com', 'K1010', 20),
(12, 'Economics', 'Business Building', 220000.00, 1988, 'Dr. Steven Wright', '1234567801', 'eco@university.com', 'L1111', 25),
(13, 'Philosophy', 'Humanities Building', 150000.00, 1968, 'Dr. Anthony Roberts', '1234567802', 'phil@university.com', 'M1212', 10),
(14, 'Sociology', 'Social Sciences Building', 210000.00, 2000, 'Dr. Karen Lee', '1234567803', 'soc@university.com', 'N1313', 14),
(15, 'Psychology', 'Health Sciences Building', 270000.00, 1995, 'Dr. Nancy White', '1234567804', 'psy@university.com', 'O1414', 18),
(16, 'Marketing', 'Business Building', 300000.00, 2005, 'Dr. Timothy Harris', '1234567805', 'mkt@university.com', 'P1515', 20),
(17, 'Finance', 'Business Building', 350000.00, 2003, 'Dr. Olivia Scott', '1234567806', 'fin@university.com', 'Q1616', 22),
(18, 'Law', 'Law School Building', 400000.00, 1990, 'Dr. Peter Clark', '1234567807', 'law@university.com', 'R1717', 30),
(19, 'Art History', 'Art Building', 170000.00, 1980, 'Dr. Rachel Adams', '1234567808', 'arth@university.com', 'S1818', 12),
(20, 'Music', 'Music Hall', 130000.00, 1985, 'Dr. Edward Nelson', '1234567809', 'mus@university.com', 'T1919', 15);

-- use truncate
truncate table Departments;

-- queries

-- 1. Retrieve all departments with a budget greater than 300,000  
SELECT * FROM Departments WHERE Budget > 300000;  

-- 2. Find departments established before the year 1990  
SELECT * FROM Departments WHERE Established_Year < 1990;  

-- 3. Count the number of departments in each building  
SELECT Building_Name, COUNT(*) AS Total_Departments 
FROM Departments 
GROUP BY Building_Name;  

-- 4. Retrieve departments that have more than 25 faculty members  
SELECT * FROM Departments 
WHERE Faculty_Count > 25;  

-- 5. Get the department with the highest budget  
SELECT * FROM Departments 
ORDER BY Budget 
DESC LIMIT 1;  

-- 6. Retrieve departments with 'Engineering' in their name  
SELECT * FROM Departments WHERE Department_Name LIKE '%Engineering%';  

-- 7. Count the total faculty members in all departments combined  
SELECT SUM(Faculty_Count) AS Total_Faculty 
FROM Departments;  

-- 8. Get departments established between 1980 and 2000  
SELECT * FROM Departments WHERE Established_Year BETWEEN 1980 AND 2000;
  

-- 9. Find the department head of 'Computer Science'  
SELECT Head_Of_Department FROM Departments 
WHERE Department_Name = 'Computer Science';  

-- 10. Retrieve departments that have an email ending with 'university.com'  
SELECT * FROM Departments WHERE Email LIKE '%university.com';  

-- 11. Get the average budget of all departments  
SELECT AVG(Budget) AS Average_Budget FROM Departments;
  

-- 12. Find the department with the lowest faculty count  
SELECT * FROM Departments ORDER BY Faculty_Count ASC LIMIT 1;  

-- 13. Update the budget of the 'Physics' department to 400,000  
UPDATE Departments SET Budget = 400000 WHERE Department_Name = 'Physics';  

-- 14. Update the phone number of the 'Mathematics' department  
UPDATE Departments SET Phone_Number = '9998887770' 
WHERE Department_Name = 'Mathematics';  

-- 15. Update the office room of all departments in 'Science Hall'  
UPDATE Departments SET Office_Room = 'Updated Room' 
WHERE Building_Name = 'Science Hall';  

-- 16. Alter table to add a new column for department ranking  
ALTER TABLE Departments ADD COLUMN Department_Ranking INT;  

-- 17. Alter table to modify the size of the 'Office_Room' column  
ALTER TABLE Departments MODIFY COLUMN Office_Room VARCHAR(30);  

-- 18. Alter table to rename 'Phone_Number' column to 'Contact_Number'  
ALTER TABLE Departments CHANGE Phone_Number Contact_Number VARCHAR(15);  

-- 19. Alter table to remove the 'Established_Year' column  
ALTER TABLE Departments DROP COLUMN Established_Year;  

-- 20. Update department ranking based on budget (Example: If budget > 400,000, set ranking = 1)  
UPDATE Departments SET Department_Ranking =  
    CASE  
        WHEN Budget > 400000 THEN 1  
        WHEN Budget BETWEEN 300000 AND 400000 THEN 2  
        ELSE 3  
    END;  


-- 3. Professors Table
CREATE TABLE Professors (
    Professor_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Gender VARCHAR(10),
    Department_ID INT,
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    Hire_Date DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
    on delete set null
    on update cascade
);


-- Inserting 20 records into the Professors table
INSERT INTO Professors (Professor_ID, First_Name, Last_Name, DOB, Gender, Department_ID, Email, Phone_Number, Hire_Date, Salary)
VALUES
(1, 'John', 'Doe', '1970-02-15', 'Male', 1, 'john.doe@university.com', '1234567890', '2000-08-15', 95000.00),
(2, 'Emily', 'Taylor', '1982-06-22', 'Female', 14, 'emily.taylor@university.com', '1234567891', '2008-05-10', 85000.00),
(3, 'Michael', 'Green', '1978-11-30', 'Male', 3, 'michael.green@university.com', '1234567892', '2010-09-12', 90000.00),
(4, 'Lisa', 'Brown', '1980-03-25', 'Female', 5, 'lisa.brown@university.com', '1234567893', '2005-01-20', 92000.00),
(5, 'James', 'White', '1965-07-11', 'Male', 5, 'james.white@university.com', '1234567894', '2002-12-15', 97000.00),
(6, 'Robert', 'Johnson', '1975-09-05', 'Male', 6, 'robert.johnson@university.com', '1234567895', '2003-03-20', 88000.00),
(7, 'Sarah', 'Harris', '1985-12-10', 'Female', 16, 'sarah.harris@university.com', '1234567896', '2015-06-14', 82000.00),
(8, 'David', 'Clark', '1970-04-14', 'Male', 3, 'david.clark@university.com', '1234567897', '2001-07-22', 94000.00),
(9, 'Linda', 'Lewis', '1968-01-25', 'Female', 6, 'linda.lewis@university.com', '1234567898', '2004-04-11', 88000.00),
(10, 'Brian', 'Allen', '1980-05-09', 'Male', 10, 'brian.allen@university.com', '1234567899', '2010-11-10', 87000.00),
(11, 'Patricia', 'King', '1973-08-18', 'Female', 11, 'patricia.king@university.com', '1234567800', '2006-02-17', 90000.00),
(12, 'Steven', 'Wright', '1983-10-03', 'Male', 12, 'steven.wright@university.com', '1234567801', '2011-04-30', 86000.00),
(13, 'Anthony', 'Roberts', '1960-02-20', 'Male', 13, 'anthony.roberts@university.com', '1234567802', '1995-06-14', 96000.00),
(14, 'Karen', 'Lee', '1979-12-05', 'Female', 7, 'karen.lee@university.com', '1234567803', '2012-05-13', 88000.00),
(15, 'Nancy', 'White', '1987-08-21', 'Female', 15, 'nancy.white@university.com', '1234567804', '2016-07-10', 85000.00),
(16, 'Timothy', 'Harris', '1976-11-17', 'Male', 8, 'timothy.harris@university.com', '1234567805', '2014-03-05', 92000.00),
(17, 'Olivia', 'Scott', '1982-04-22', 'Female', 17, 'olivia.scott@university.com', '1234567806', '2010-09-08', 88000.00),
(18, 'Peter', 'Clark', '1969-07-13', 'Male', 18, 'peter.clark@university.com', '1234567807', '2000-11-19', 95000.00),
(19, 'Rachel', 'Adams', '1984-09-02', 'Female', 8, 'rachel.adams@university.com', '1234567808', '2018-04-27', 82000.00),
(20, 'Edward', 'Nelson', '1975-03-14', 'Male', 20, 'edward.nelson@university.com', '1234567809', '2009-06-19', 90000.00);

-- Retrieve all professors
SELECT * FROM Professors;

-- Find professors earning more than $90,000
SELECT * FROM Professors WHERE Salary > 90000;

-- Get the total number of professors
SELECT COUNT(*) AS Total_Professors 
FROM Professors;

-- Find the highest salary among professors
SELECT MAX(Salary) AS Highest_Salary 
FROM Professors;

-- Get the average salary of professors
SELECT AVG(Salary) AS Average_Salary FROM Professors;

-- List professors who were hired before the year 2005
SELECT * FROM Professors WHERE Hire_Date < '2005-01-01';

-- Find professors with last names containing 'Smith'
SELECT * FROM Professors WHERE Last_Name LIKE '%Smith%';

-- Retrieve all female professors
SELECT * FROM Professors WHERE Gender = 'Female';

-- List professors ordered by salary in descending order
SELECT * FROM Professors ORDER BY Salary DESC;

-- Get the names and emails of professors hired in 2010
SELECT First_Name, hire_date,Last_Name, Email FROM Professors WHERE YEAR(Hire_Date) = 2010;

-- Find professors who were born after 1980
SELECT * FROM Professors WHERE DOB > '1980-01-01';

-- Count how many male and female professors there are
SELECT Gender, COUNT(*) AS Count FROM Professors GROUP BY Gender;

-- Retrieve the professor with the earliest hire date
SELECT * FROM Professors 
ORDER BY Hire_Date ASC LIMIT 1;

-- List professors whose email ends with 'university.com'
SELECT * FROM Professors 
WHERE Email LIKE '%university.com';

-- Retrieve the sum of all professors' salaries
SELECT SUM(Salary) AS Total_Salary 
FROM Professors;

set sql_safe_updates=0;

-- Increase salary of all professors by 10%
UPDATE Professors 
SET Salary = Salary * 1.10;

-- Change the email of a specific professor (e.g., Professor_ID = 5)
UPDATE Professors 
SET Email = 'james.white@updateduniversity.com' 
WHERE Professor_ID = 5;

-- Set department ID to NULL for professors with no assigned department
UPDATE Professors 
SET Department_ID = NULL 
WHERE Department_ID NOT IN (SELECT Department_ID FROM Departments);


-- Modify the Salary column to allow higher precision
ALTER TABLE Professors 
MODIFY COLUMN Salary DECIMAL(12,2);

-- Drop the Phone_Number column
ALTER TABLE Professors 
DROP COLUMN Phone_Number;

-- Rename the First_Name column to Given_Name
ALTER TABLE Professors 
CHANGE COLUMN First_Name Given_Name VARCHAR(50);

-- Add a NOT NULL constraint to the Email column
ALTER TABLE Professors 
MODIFY COLUMN Email VARCHAR(100) NOT NULL;

-- delete from both tables department and professors 
DELETE FROM professors WHERE Department_ID = 20;
select* from professors;
select* from departments;

-- updates record in two tables
update departments
set Department_ID =11101
where Department_ID =5;

--  use truncate 
truncate table Professors;

-- 4. Courses Table
CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Department_ID INT,
    Professor_ID INT,
    Credits INT,
    Semester VARCHAR(20),
    Duration INT,
    Room_Number VARCHAR(10),
    Schedule VARCHAR(100),
    Enrollment_Limit INT
    );



-- Inserting 20 records into the Courses table
INSERT INTO Courses (Course_ID, Course_Name, Department_ID, Professor_ID, Credits, Semester, Duration, Room_Number, Schedule, Enrollment_Limit)
VALUES
(1, 'Introduction to Computer Science', 1, 1, 3, 'Fall', 16, 'B101', 'Mon/Wed 9:00 AM - 10:30 AM', 50),
(2, 'Advanced Mechanics', 3, 20, 4, 'Spring', 16, 'A102', 'Tue/Thu 10:00 AM - 12:00 PM', 40),
(3, 'Structural Analysis', 13, 3, 3, 'Fall', 16, 'C201', 'Mon/Wed 1:00 PM - 2:30 PM', 45),
(4, 'Electrical Circuits', 10, 19, 3, 'Spring', 16, 'D303', 'Tue/Thu 2:00 PM - 4:00 PM', 40),
(5, 'Organic Chemistry', 15, 5, 4, 'Fall', 16, 'E404', 'Mon/Wed 9:00 AM - 11:00 AM', 35),
(6, 'Quantum Physics', 16, 6, 4, 'Spring', 16, 'F505', 'Tue/Thu 3:00 PM - 5:00 PM', 30),
(7, 'Biology 101', 3, 15, 3, 'Fall', 16, 'G606', 'Mon/Wed 10:00 AM - 11:30 AM', 60),
(8, 'General Chemistry', 5, 12, 4, 'Spring', 16, 'H707', 'Tue/Thu 1:00 PM - 3:00 PM', 50),
(9, 'Calculus I', 6, 9, 3, 'Fall', 16, 'I808', 'Mon/Wed 8:00 AM - 9:30 AM', 40),
(10, 'English Literature', 10, 8, 3, 'Spring', 16, 'J909', 'Tue/Thu 10:00 AM - 12:00 PM', 45),
(11, 'World History', 3, 11, 3, 'Fall', 16, 'K1010', 'Mon/Wed 2:00 PM - 3:30 PM', 40),
(12, 'Microeconomics', 8, 12, 3, 'Spring', 16, 'L1111', 'Tue/Thu 1:00 PM - 2:30 PM', 50),
(13, 'Ethics in Philosophy', 7, 3, 3, 'Fall', 16, 'M1212', 'Mon/Wed 9:00 AM - 10:30 AM', 30),
(14, 'Sociological Theory', 4, 2, 3, 'Spring', 16, 'N1313', 'Tue/Thu 2:00 PM - 3:30 PM', 25),
(15, 'Intro to Psychology', 15, 5, 3, 'Fall', 16, 'O1414', 'Mon/Wed 10:00 AM - 11:30 AM', 45),
(16, 'Marketing Fundamentals', 6, 16, 3, 'Spring', 16, 'P1515', 'Tue/Thu 3:00 PM - 4:30 PM', 40),
(17, 'Corporate Finance', 7, 1, 3, 'Fall', 16, 'Q1616', 'Mon/Wed 1:00 PM - 2:30 PM', 35),
(18, 'International Law', 1, 8, 3, 'Spring', 16, 'R1717', 'Tue/Thu 9:00 AM - 10:30 AM', 40),
(19, 'Art History 101', 9, 7, 3, 'Fall', 16, 'S1818', 'Mon/Wed 11:00 AM - 12:30 PM', 30),
(20, 'Music Theory', 2, 10, 3, 'Spring', 16, 'T1919', 'Tue/Thu 2:00 PM - 3:30 PM', 25);


-- use truncate
truncate table Courses;

-- Queries

-- Retrieve all courses
SELECT * FROM Courses;

-- Find courses with more than 3 credits
SELECT * FROM Courses WHERE Credits > 3;

-- Count total courses available
SELECT COUNT(*) AS Total_Courses FROM Courses;

-- Find the course with the highest enrollment limit
SELECT * FROM Courses ORDER BY Enrollment_Limit DESC LIMIT 1;

-- Get the average enrollment limit of all courses
SELECT AVG(Enrollment_Limit) AS Average_Enrollment FROM Courses;

-- List courses scheduled for Monday and Wednesday
SELECT * FROM Courses WHERE Schedule LIKE '%Mon/Wed%';

-- Retrieve courses that last more than 16 weeks
SELECT * FROM Courses WHERE Duration > 16;

-- Find courses taught by Professor ID 5
SELECT * FROM Courses WHERE Professor_ID = 5;

-- List courses offered in the Fall semester
SELECT * FROM Courses WHERE Semester = 'Fall';

-- Get the number of courses per semester
SELECT Semester, COUNT(*) AS Course_Count FROM Courses GROUP BY Semester;

-- Find courses with room numbers starting with 'B'
SELECT * FROM Courses WHERE Room_Number LIKE 'B%';

-- Retrieve the first 5 courses with the highest enrollment limit
SELECT * FROM Courses ORDER BY Enrollment_Limit DESC LIMIT 5;

-- Find the department that offers the most courses
SELECT Department_ID, COUNT(*) AS Course_Count 
FROM Courses 
GROUP BY Department_ID 
ORDER BY Course_Count 
DESC LIMIT 1;

-- Get courses that start before 10:00 AM
SELECT * FROM Courses WHERE Schedule 
LIKE '%8:00 AM%' OR Schedule 
LIKE '%9:00 AM%';

-- Retrieve the sum of all credits across courses
SELECT SUM(Credits) AS Total_Credits FROM Courses;

-- Update the enrollment limit for courses with more than 50 students
UPDATE Courses SET Enrollment_Limit = 50 WHERE Enrollment_Limit > 50;

-- Change the room number for a specific course (e.g., Course_ID = 10)
UPDATE Courses SET Room_Number = 'X999' WHERE Course_ID = 10;

-- Increase course duration by 2 weeks for all Spring courses
UPDATE Courses SET Duration = Duration + 2 WHERE Semester = 'Spring';

-- Add a column for Course Level (Undergraduate, Graduate)
ALTER TABLE Courses ADD COLUMN Course_Level VARCHAR(20);

-- Modify the Schedule column to allow longer text
ALTER TABLE Courses MODIFY COLUMN Schedule VARCHAR(255);

-- Drop the Duration column
ALTER TABLE Courses DROP COLUMN Duration;

-- Rename the Room_Number column to Classroom
ALTER TABLE Courses CHANGE COLUMN Room_Number Classroom VARCHAR(10);

alter table Courses
rename column classroom to Room_Number;

-- Set a NOT NULL constraint on the Course_Name column
ALTER TABLE Courses MODIFY COLUMN Course_Name VARCHAR(100) NOT NULL;


-- 5. Classrooms Table
CREATE TABLE Classrooms (
    Room_ID INT PRIMARY KEY,                      
    Building_Name VARCHAR(50),                    
    Room_Number VARCHAR(10),                         
    Capacity INT,                                    
    Equipment VARCHAR(200),                          
    Floor_Number INT,                                
    Is_Laboratory enum ('y','n'),                           
    AC_Availability enum ('y','n'),                       
    WiFi_Availability enum ('y','n'),                       
    Projector_Availability enum ('y','n')                  
);

drop table Classrooms;

-- Inserting 20 records into the Classrooms table
INSERT INTO Classrooms (Room_ID, Building_Name, Room_Number, Capacity, Equipment, Floor_Number, Is_Laboratory, AC_Availability, WiFi_Availability, Projector_Availability)
VALUES
(1, 'Science Building', 'S101', 40, 'Projector, Whiteboard, Computers', 1, 'Y', 'Y', 'Y', 'Y'),
(2, 'Engineering Building', 'E102', 30, 'Projector, Whiteboard', 2, 'N', 'Y', 'Y', 'Y'),
(3, 'Arts Building', 'A201', 50, 'Projector, Whiteboard, Speakers', 2, 'N', 'Y', 'Y', 'N'),
(4, 'Main Building', 'M301', 60, 'Projector, Whiteboard, Tables, Chairs', 3, 'N', 'Y', 'Y', 'Y'),
(5, 'Humanities Building', 'H402', 35, 'Projector, Whiteboard, Computers', 4, 'N', 'Y', 'Y', 'Y'),
(6, 'Business Building', 'B103', 45, 'Projector, Whiteboard, Speakers, Computers', 1, 'N', 'Y', 'Y', 'Y'),
(7, 'Law Building', 'L204', 30, 'Whiteboard, Projector', 2, 'N', 'Y', 'Y', 'N'),
(8, 'Medical Building', 'M505', 25, 'Projector, Whiteboard, Laboratory Equipment', 5, 'Y', 'Y', 'Y', 'Y'),
(9, 'Science Building', 'S106', 40, 'Projector, Whiteboard', 1, 'N', 'Y', 'Y', 'Y'),
(10, 'Engineering Building', 'E108', 35, 'Whiteboard, Computers', 3, 'N', 'Y', 'Y', 'Y'),
(11, 'Arts Building', 'A301', 50, 'Projector, Whiteboard, Computers', 3, 'N', 'Y', 'Y', 'Y'),
(12, 'Main Building', 'M201', 40, 'Projector, Whiteboard, Whiteboard', 2, 'N', 'Y', 'Y', 'Y'),
(13, 'Humanities Building', 'H601', 45, 'Projector, Whiteboard, Computers, Chairs', 6, 'N', 'Y', 'Y', 'Y'),
(14, 'Business Building', 'B205', 60, 'Projector, Whiteboard, Tables', 5, 'N', 'Y', 'Y', 'Y'),
(15, 'Law Building', 'L309', 30, 'Whiteboard, Projector, Computers', 4, 'N', 'Y', 'Y', 'N'),
(16, 'Medical Building', 'M409', 50, 'Projector, Whiteboard, Laboratory Equipment', 6, 'Y', 'Y', 'Y', 'Y'),
(17, 'Science Building', 'S504', 30, 'Projector, Whiteboard, Computers', 5, 'N', 'Y', 'Y', 'Y'),
(18, 'Engineering Building', 'E603', 40, 'Projector, Whiteboard', 6, 'N', 'Y', 'Y', 'Y'),
(19, 'Arts Building', 'A607', 25, 'Projector, Whiteboard', 6, 'N', 'Y', 'Y', 'Y'),
(20, 'Main Building', 'M703', 50, 'Projector, Whiteboard, Computers', 7, 'N', 'Y', 'Y', 'Y');

-- Queries
-- Retrieve all classrooms
SELECT * FROM Classrooms;

-- Find classrooms with a capacity greater than 40
SELECT * FROM Classrooms WHERE Capacity > 40;

-- Count the total number of classrooms
SELECT COUNT(*) AS Total_Classrooms FROM Classrooms;

-- Get the classroom with the highest capacity
SELECT * FROM Classrooms 
ORDER BY Capacity DESC LIMIT 1;

-- Find all laboratory classrooms
SELECT * FROM Classrooms 
WHERE Is_Laboratory = 'Y';

-- List classrooms that have a projector available
SELECT * FROM Classrooms 
WHERE Projector_Availability = 'Y';

-- Count how many classrooms have AC available
SELECT COUNT(*) AS AC_Enabled_Classrooms 
FROM Classrooms 
WHERE AC_Availability = 'Y';

-- Retrieve classrooms located on floor 3 or higher
SELECT * FROM Classrooms WHERE Floor_Number >= 3;

-- Find classrooms that are in the Science Building
SELECT * FROM Classrooms WHERE Building_Name = 'Science Building';

-- Get the number of classrooms per building
SELECT Building_Name, COUNT(*) AS Classroom_Count 
FROM Classrooms GROUP BY Building_Name;

-- Find classrooms with both AC and WiFi available
SELECT * FROM Classrooms WHERE AC_Availability = 'Y' AND WiFi_Availability = 'Y';

-- Get the average capacity of all classrooms
SELECT AVG(Capacity) AS Average_Capacity FROM Classrooms;

-- Retrieve the first 5 classrooms with the smallest capacity
SELECT * FROM Classrooms 
ORDER BY Capacity ASC LIMIT 5;

-- Find classrooms that have computers in their equipment list
SELECT * FROM Classrooms 
WHERE Equipment LIKE '%Computers%';

-- Get classrooms that are available on floor 1 and have projectors
SELECT * FROM Classrooms 
WHERE Floor_Number = 1 AND Projector_Availability = 'Y';

-- Update classroom capacity where room number is 'S101'
UPDATE Classrooms SET Capacity = 45 
WHERE Room_Number = 'S101';

-- Increase capacity by 5 for all classrooms on the first floor
UPDATE Classrooms SET Capacity = Capacity + 5 
WHERE Floor_Number = 1;

-- Change AC availability to 'N' for all rooms in the Humanities Building
UPDATE Classrooms SET AC_Availability = 'N' 
WHERE Building_Name = 'Humanities Building';

-- Add a new column to indicate if the room has smart board availability
ALTER TABLE Classrooms ADD COLUMN Smart_Board_Availability ENUM('Y', 'N');

-- Modify the Equipment column to allow longer text
ALTER TABLE Classrooms MODIFY COLUMN Equipment VARCHAR(300);

-- Remove the WiFi_Availability column
ALTER TABLE Classrooms DROP COLUMN WiFi_Availability;

-- Rename the Floor_Number column to Level
ALTER TABLE Classrooms CHANGE COLUMN Floor_Number Level INT;

-- Set a NOT NULL constraint on the Building_Name column
ALTER TABLE Classrooms MODIFY COLUMN Building_Name VARCHAR(50) NOT NULL;


-- 6. Enrollments Table
CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    Semester VARCHAR(20),
    Grade VARCHAR(5),
    Attendance_Percentage DECIMAL(5, 2),
    Midterm_Marks INT,
    Final_Marks INT
);

drop table Enrollments;

-- Insert 20 records into the Enrollments table
INSERT INTO Enrollments VALUES
(1, 11, 17, '2024-01-10', 'Spring 2024', 'A', 95.50, 80, 90),
(2, 12, 2, '2024-01-12', 'Spring 2024', 'B+', 87.00, 75, 85),
(3, 2, 13, '2024-01-15', 'Spring 2024', 'A-', 92.00, 78, 88),
(4, 14, 11, '2024-01-20', 'Spring 2024', 'B', 85.00, 70, 80),
(5, 20, 5, '2024-01-25', 'Spring 2024', 'C+', 75.50, 60, 70),
(6, 16, 3, '2024-01-28', 'Spring 2024', 'A', 96.00, 85, 95),
(7, 7, 12, '2024-02-01', 'Spring 2024', 'B+', 88.50, 77, 87),
(8, 9, 8, '2024-02-05', 'Spring 2024', 'A-', 93.00, 82, 92),
(9, 19, 10, '2024-02-10', 'Spring 2024', 'B', 84.00, 72, 82),
(10, 10, 19, '2024-02-15', 'Spring 2024', 'C+', 78.00, 65, 75),
(11, 11, 3, '2024-02-20', 'Spring 2024', 'A', 97.50, 88, 98),
(12, 13, 12, '2024-02-25', 'Spring 2024', 'B+', 86.00, 74, 84),
(13, 8, 5, '2024-03-01', 'Spring 2024', 'A-', 91.50, 79, 89),
(14, 14, 5, '2024-03-05', 'Spring 2024', 'B', 83.50, 71, 81),
(15, 11, 6, '2024-03-10', 'Spring 2024', 'C+', 76.00, 62, 72),
(16, 6, 16, '2024-03-15', 'Spring 2024', 'A', 95.00, 84, 94),
(17, 7, 9, '2024-03-20', 'Spring 2024', 'B+', 89.00, 76, 86),
(18, 1, 18, '2024-03-25', 'Spring 2024', 'A-', 92.50, 81, 91),
(19, 19, 12, '2024-03-30', 'Spring 2024', 'B', 82.00, 69, 79),
(20, 12, 20, '2024-04-01', 'Spring 2024', 'C+', 77.50, 64, 74);


-- Queries

-- Find students who scored above 90 in the final exam
SELECT * FROM Enrollments WHERE Final_Marks > 90;

-- Count the total number of enrollments
SELECT COUNT(*) AS Total_Enrollments FROM Enrollments;

-- Get the highest final marks
SELECT * FROM Enrollments ORDER BY Final_Marks DESC LIMIT 1;

-- Find students with attendance percentage below 80%
SELECT * FROM Enrollments WHERE Attendance_Percentage < 80;

-- List students who scored A grade
SELECT * FROM Enrollments WHERE Grade = 'A';

-- Count the number of students per grade
SELECT Grade, COUNT(*) AS Student_Count FROM Enrollments GROUP BY Grade;

-- Find students enrolled in the "Spring 2024" semester
SELECT * FROM Enrollments WHERE Semester = 'Spring 2024';

-- Calculate the average midterm marks
SELECT AVG(Midterm_Marks) AS Average_Midterm FROM Enrollments;

-- Retrieve the top 5 students based on final marks
SELECT * FROM Enrollments ORDER BY Final_Marks DESC LIMIT 5;

-- Find students who scored above 85 in both midterm and final exams
SELECT * FROM Enrollments WHERE Midterm_Marks > 85 AND Final_Marks > 85;

-- Count how many students have attendance above 90%
SELECT COUNT(*) AS High_Attendance_Students FROM Enrollments WHERE Attendance_Percentage > 90;

-- Get students whose grades are B or lower
SELECT * FROM Enrollments WHERE Grade in ('B+', 'B', 'C+', 'C', 'D', 'F');

-- Find students who improved in the final compared to the midterm
SELECT * FROM Enrollments WHERE Final_Marks > Midterm_Marks;

-- Retrieve enrollments where students have full attendance (100%)
SELECT * FROM Enrollments WHERE Attendance_Percentage = 100;

-- Update grade to 'A' where final marks are 95 or more
UPDATE Enrollments SET Grade = 'A' WHERE Final_Marks >= 95;

-- Increase midterm marks by 5% for students with attendance above 90%
UPDATE Enrollments 
SET Midterm_Marks = Midterm_Marks * 1.05 
WHERE Attendance_Percentage > 90;

-- Set grade to 'B+' for students who have 85-89 final marks
UPDATE Enrollments SET Grade = 'B+' 
WHERE Final_Marks BETWEEN 85 AND 89;

-- Add a column to store course completion status
ALTER TABLE Enrollments 
ADD COLUMN Completion_Status ENUM('Completed', 'Ongoing', 'Dropped');

-- Modify Attendance_Percentage to allow NULL values
ALTER TABLE Enrollments MODIFY COLUMN Attendance_Percentage DECIMAL(5,2) NULL;

-- Remove the Semester column
ALTER TABLE Enrollments DROP COLUMN Semester;

-- Rename the Grade column to Final_Grade
ALTER TABLE Enrollments CHANGE COLUMN Grade Final_Grade VARCHAR(5);

-- Set NOT NULL constraint on Student_ID
ALTER TABLE Enrollments MODIFY COLUMN Student_ID INT NOT NULL;


-- 7. Attendance Table
CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Date DATE,
    Status VARCHAR(10),
    Recorded_By VARCHAR(50),
    Recorded_Date DATE,
    Reason_Absent VARCHAR(200),
    Class_Duration INT,
    Class_Topic VARCHAR(100),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
    on delete cascade
    on update cascade
);

-- Insert 20 records into the Attendance table
INSERT INTO Attendance VALUES
(1, 2, 11, '2024-01-10', 'Present', 'Professor A', '2024-01-10', NULL, 60, 'Introduction to Programming'),
(2, 18, 2, '2024-01-12', 'Absent', 'Professor B', '2024-01-12', 'Sick', 60, 'Database Basics'),
(3, 4, 19, '2024-01-15', 'Present', 'Professor C', '2024-01-15', NULL, 60, 'Data Structures'),
(4, 15, 4, '2024-01-20', 'Absent', 'Professor D', '2024-01-20', 'Family Emergency', 90, 'Advanced Mathematics'),
(5, 3, 5, '2024-01-25', 'Present', 'Professor E', '2024-01-25', NULL, 60, 'Physics Overview'),
(6, 11, 6, '2024-01-28', 'Present', 'Professor F', '2024-01-28', NULL, 60, 'Chemistry Basics'),
(7, 7, 18, '2024-02-01', 'Absent', 'Professor G', '2024-02-01', 'Travel Issues', 90, 'Economics'),
(8, 15, 8, '2024-02-05', 'Present', 'Professor H', '2024-02-05', NULL, 60, 'Software Engineering'),
(9, 17, 9, '2024-02-10', 'Present', 'Professor I', '2024-02-10', NULL, 45, 'Art Appreciation'),
(10, 10, 5, '2024-02-15', 'Absent', 'Professor J', '2024-02-15', 'Late', 60, 'Philosophy Basics'),
(11, 4, 11, '2024-02-20', 'Present', 'Professor A', '2024-02-20', NULL, 60, 'Algorithms'),
(12, 1, 4, '2024-02-25', 'Absent', 'Professor B', '2024-02-25', 'Medical', 90, 'Database Optimization'),
(13, 7, 13, '2024-03-01', 'Present', 'Professor C', '2024-03-01', NULL, 60, 'Graph Theory'),
(14, 7, 3, '2024-03-05', 'Absent', 'Professor D', '2024-03-05', 'Personal', 90, 'Statistics'),
(15, 18, 8, '2024-03-10', 'Present', 'Professor E', '2024-03-10', NULL, 60, 'Quantum Physics'),
(16, 6, 16, '2024-03-15', 'Absent', 'Professor F', '2024-03-15', 'Family Event', 60, 'Organic Chemistry'),
(17, 13, 9, '2024-03-20', 'Present', 'Professor G', '2024-03-20', NULL, 60, 'Microeconomics'),
(18, 9, 18, '2024-03-25', 'Present', 'Professor H', '2024-03-25', NULL, 60, 'Software Design'),
(19, 12, 19, '2024-03-30', 'Absent', 'Professor I', '2024-03-30', 'Traffic', 45, 'Visual Arts'),
(20, 16, 4, '2024-04-01', 'Present', 'Professor J', '2024-04-01', NULL, 60, 'Ethics');
 
-- Retrieve all attendance records
SELECT * FROM Attendance;

-- Find all students who were absent at least once
SELECT DISTINCT Student_ID FROM Attendance WHERE Status = 'Absent';

-- Count the total number of absences
SELECT COUNT(*) AS Total_Absences FROM Attendance WHERE Status = 'Absent';

-- Get the number of students who attended each class topic
SELECT Class_Topic, COUNT(*) AS Attendance_Count FROM Attendance WHERE Status = 'Present' GROUP BY Class_Topic;

-- Find students who attended more than 5 classes
SELECT Student_ID, COUNT(*) AS Total_Classes FROM Attendance WHERE Status = 'Present' GROUP BY Student_ID HAVING Total_Classes > 5;

-- Retrieve attendance records where the reason for absence was due to medical issues
SELECT * FROM Attendance WHERE Reason_Absent LIKE '%Medical%' OR Reason_Absent LIKE '%Sick%';

-- Count the number of classes recorded by each professor
SELECT Recorded_By, COUNT(*) AS Total_Classes_Recorded FROM Attendance GROUP BY Recorded_By;

-- Find the average class duration for all recorded sessions
SELECT AVG(Class_Duration) AS Average_Class_Duration FROM Attendance;

-- List students who missed more than 2 classes
SELECT Student_ID, COUNT(*) AS Absence_Count FROM Attendance WHERE Status = 'Absent' GROUP BY Student_ID HAVING Absence_Count > 2;

-- Retrieve attendance records for a specific course (e.g., Course_ID = 4)
SELECT * FROM Attendance WHERE Course_ID = 4;

-- Update all NULL values in the `Reason_Absent` column to 'Not Provided'
UPDATE Attendance SET Reason_Absent = 'Not Provided' WHERE Reason_Absent IS NULL;

-- Change 'Late' in Reason_Absent to 'Tardy Arrival'
UPDATE Attendance SET Reason_Absent = 'Tardy Arrival' WHERE Reason_Absent = 'Late';

-- Add a new column to store the attendance percentage
ALTER TABLE Attendance ADD COLUMN Attendance_Percentage DECIMAL(5,2);

-- Modify the Status column to allow only 'Present' or 'Absent'
ALTER TABLE Attendance MODIFY COLUMN Status ENUM('Present', 'Absent');

-- Rename the Recorded_By column to Instructor_Name
ALTER TABLE Attendance CHANGE COLUMN Recorded_By Instructor_Name VARCHAR(50);

-- Set NOT NULL constraint on Student_ID
ALTER TABLE Attendance MODIFY COLUMN Student_ID INT NOT NULL;

-- Increase the length of the Class_Topic column to 150 characters
ALTER TABLE Attendance MODIFY COLUMN Class_Topic VARCHAR(150);
 


-- table 8
-- Create the Exams table
CREATE TABLE Exams (
    Exam_ID INT PRIMARY KEY,
    Course_ID INT not null,
    Exam_Date DATE,
    Duration INT,
    Total_Marks INT not null,
    Exam_Type VARCHAR(50),
    Room_Number VARCHAR(10),
    Conducted_By VARCHAR(50),
    Pass_Marks INT,
    Remarks VARCHAR(200)
    );

-- Insert 20 records into the Exams table
INSERT INTO Exams VALUES
(1, 20, '2024-01-15', 120, 100, 'Midterm', 'A101', 'Professor A', 40, 'Mandatory Exam'),
(2, 2, '2024-01-20', 90, 100, 'Quiz', 'B102', 'Professor B', 35, 'Open Book'),
(3, 13, '2024-01-25', 60, 50, 'Quiz', 'C103', 'Professor C', 20, 'Extra Practice'),
(4, 4, '2024-01-30', 180, 200, 'Final', 'D104', 'Professor D', 80, 'Comprehensive'),
(5, 18, '2024-02-05', 90, 100, 'Midterm', 'E105', 'Professor E', 35, 'Important Topics'),
(6, 15, '2024-02-10', 120, 150, 'Final', 'F106', 'Professor F', 50, 'Lab Component Included'),
(7, 7, '2024-02-15', 60, 50, 'Quiz', 'G107', 'Professor G', 20, 'Teamwork Assessment'),
(8, 18, '2024-02-20', 120, 100, 'Midterm', 'H108', 'Professor H', 40, 'Closed Book'),
(9, 9, '2024-02-25', 180, 200, 'Final', 'I109', 'Professor I', 75, 'Mandatory'),
(10, 10, '2024-03-01', 90, 100, 'Quiz', 'J110', 'Professor J', 30, 'Individual Effort'),
(11, 1, '2024-03-05', 120, 100, 'Midterm', 'A101', 'Professor A', 40, 'New Topics Included'),
(12, 12, '2024-03-10', 60, 50, 'Quiz', 'B102', 'Professor B', 20, 'Practice Focused'),
(13, 10, '2024-03-15', 180, 200, 'Final', 'C103', 'Professor C', 80, 'Comprehensive'),
(14, 20, '2024-03-20', 90, 100, 'Quiz', 'D104', 'Professor D', 35, 'Critical Analysis'),
(15, 19, '2024-03-25', 120, 150, 'Midterm', 'E105', 'Professor E', 50, 'Essay Focus'),
(16, 5, '2024-03-30', 180, 200, 'Final', 'F106', 'Professor F', 80, 'Lab Included'),
(17, 6, '2024-04-05', 60, 50, 'Quiz', 'G107', 'Professor G', 20, 'Team Participation'),
(18, 11, '2024-04-10', 120, 100, 'Midterm', 'H108', 'Professor H', 40, 'Important Exam'),
(19, 5, '2024-04-15', 90, 100, 'Quiz', 'I109', 'Professor I', 35, 'Mandatory'),
(20, 8, '2024-04-20', 180, 200, 'Final', 'J110', 'Professor J', 75, 'Comprehensive Review');


-- 9. Results table

-- Create the Results table
CREATE TABLE Results (
    Result_ID INT PRIMARY KEY,
    Student_ID INT,
    Exam_ID INT,
    Marks_Obtained INT,
    Grade VARCHAR(10),
    Percentage DECIMAL(5, 2),
    Ranks INT,
    Passed BOOLEAN,
    Comments VARCHAR(200),
    Issue_Date DATE,
    FOREIGN KEY (Exam_ID) REFERENCES Exams(Exam_ID)
);

drop table Results;

-- Insert 20 records into the Results table
INSERT INTO Results VALUES
(1, 6, 8, 85, 'A', 85.00, 1, TRUE, 'Excellent performance', '2024-01-20'),
(2, 12, 14, 40, 'C', 40.00, 15, TRUE, 'Needs improvement', '2024-01-25'),
(3, 11, 17, 50, 'B', 50.00, 10, TRUE, 'Good effort', '2024-01-30'),
(4, 18, 4, 75, 'A', 75.00, 3, TRUE, 'Well done', '2024-02-05'),
(5, 7, 18, 65, 'B', 65.00, 7, TRUE, 'Consistent work', '2024-02-10'),
(6, 9, 6, 35, 'D', 35.00, 18, FALSE, 'Failed', '2024-02-15'),
(7, 8, 7, 90, 'A+', 90.00, 1, TRUE, 'Outstanding', '2024-02-20'),
(8, 3, 10, 45, 'C', 45.00, 13, TRUE, 'Fair performance', '2024-02-25'),
(9, 16, 9, 80, 'A', 80.00, 2, TRUE, 'Great work', '2024-03-01'),
(10, 4, 10, 55, 'B', 55.00, 9, TRUE, 'Satisfactory', '2024-03-05'),
(11, 10, 11, 95, 'A+', 95.00, 1, TRUE, 'Exceptional', '2024-03-10'),
(12, 4, 15, 30, 'D', 30.00, 20, FALSE, 'Failed', '2024-03-15'),
(13, 2, 19, 60, 'B', 60.00, 8, TRUE, 'Good performance', '2024-03-20'),
(14, 1, 14, 70, 'A', 70.00, 5, TRUE, 'Impressive', '2024-03-25'),
(15, 16, 20, 25, 'E', 25.00, 22, FALSE, 'Very poor', '2024-03-30'),
(16, 8, 16, 50, 'B', 50.00, 12, TRUE, 'Average', '2024-04-05'),
(17, 20, 1, 85, 'A+', 85.00, 1, TRUE, 'Excellent', '2024-04-10'),
(18, 5, 18, 40, 'C', 40.00, 14, TRUE, 'Needs improvement', '2024-04-15'),
(19, 9, 19, 45, 'C', 45.00, 16, TRUE, 'Passable', '2024-04-20'),
(20, 2, 16, 90, 'A+', 90.00, 1, TRUE, 'Remarkable', '2024-04-25');

truncate table results;

-- 10. staff table

-- Create the Staff table
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Department_ID INT,
    Position VARCHAR(50),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    Hire_Date DATE,
    Salary DECIMAL(10, 2),
    Address VARCHAR(100)
);

-- Insert 20 records into the Staff table
INSERT INTO Staff VALUES
(1, 'John', 'Doe', 1, 'Professor', 'john.doe@example.com', '1234567890', '2015-01-15', 75000.00, '123 Elm Street'),
(2, 'Jane', 'Smith', 2, 'Librarian', 'jane.smith@example.com', '1234567891', '2016-02-20', 45000.00, '456 Oak Avenue'),
(3, 'Mike', 'Brown', 1, 'Professor', 'mike.brown@example.com', '1234567892', '2017-03-10', 72000.00, '789 Pine Lane'),
(4, 'Emily', 'Davis', 3, 'Clerk', 'emily.davis@example.com', '1234567893', '2018-04-05', 30000.00, '321 Maple Road'),
(5, 'Chris', 'Wilson', 2, 'Assistant Librarian', 'chris.wilson@example.com', '1234567894', '2019-05-15', 38000.00, '654 Birch Drive'),
(6, 'Laura', 'Taylor', 1, 'Researcher', 'laura.taylor@example.com', '1234567895', '2020-06-20', 60000.00, '987 Cedar Way'),
(7, 'Daniel', 'Anderson', 3, 'Accountant', 'daniel.anderson@example.com', '1234567896', '2015-07-10', 52000.00, '159 Walnut Street'),
(8, 'Sophia', 'Martinez', 1, 'Lab Technician', 'sophia.martinez@example.com', '1234567897', '2016-08-25', 48000.00, '753 Fir Lane'),
(9, 'James', 'Garcia', 2, 'Senior Librarian', 'james.garcia@example.com', '1234567898', '2017-09-15', 55000.00, '852 Redwood Road'),
(10, 'Olivia', 'Lopez', 3, 'HR Manager', 'olivia.lopez@example.com', '1234567899', '2018-10-05', 65000.00, '963 Spruce Avenue'),
(11, 'Liam', 'Walker', 1, 'Professor', 'liam.walker@example.com', '1234567800', '2019-11-20', 78000.00, '741 Ash Boulevard'),
(12, 'Emma', 'King', 2, 'Cataloguer', 'emma.king@example.com', '1234567801', '2020-12-10', 42000.00, '852 Hemlock Drive'),
(13, 'Noah', 'Scott', 3, 'Finance Manager', 'noah.scott@example.com', '1234567802', '2021-01-15', 68000.00, '753 Cypress Lane'),
(14, 'Ava', 'Green', 1, 'Research Assistant', 'ava.green@example.com', '1234567803', '2021-02-20', 47000.00, '654 Willow Street'),
(15, 'Mason', 'Hall', 2, 'IT Specialist', 'mason.hall@example.com', '1234567804', '2021-03-10', 59000.00, '456 Sycamore Way'),
(16, 'Isabella', 'Adams', 1, 'Professor', 'isabella.adams@example.com', '1234567805', '2021-04-05', 77000.00, '123 Cherry Lane'),
(17, 'Ethan', 'Baker', 3, 'Administrative Officer', 'ethan.baker@example.com', '1234567806', '2021-05-15', 63000.00, '789 Dogwood Drive'),
(18, 'Mia', 'Nelson', 2, 'Library Clerk', 'mia.nelson@example.com', '1234567807', '2021-06-20', 35000.00, '321 Magnolia Street'),
(19, 'Lucas', 'Carter', 3, 'Manager', 'lucas.carter@example.com', '1234567808', '2021-07-10', 70000.00, '951 Poplar Lane'),
(20, 'Amelia', 'Mitchell', 1, 'Lecturer', 'amelia.mitchell@example.com', '1234567809', '2021-08-25', 68000.00, '741 Juniper Road');



-- 11. Library Table
CREATE TABLE Library (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    ISBN VARCHAR(20),
    Publication_Year INT,
    Publisher VARCHAR(50),
    Genre VARCHAR(50),
    Copies_Available INT,
    Shelf_Number VARCHAR(10),
    Last_Updated DATE
);

drop database dnyanasadhana_college;
create database dnyanasadhana_college;
use dnyanasadhana_college;

drop table Library;
 
-- Insert 20 records into the Library table
INSERT INTO Library (Book_ID, Title, Author, ISBN, Publication_Year, Publisher, Genre, Copies_Available, Shelf_Number, Last_Updated)
VALUES 
(1, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', 1960, 'J.B. Lippincott & Co.', 'Fiction', 5, 'A1', '2025-01-01'),
(2, '1984', 'George Orwell', '9780451524935', 1949, 'Secker & Warburg', 'Dystopian', 3, 'B2', '2025-01-01'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 'Scribner', 'Classic', 4, 'C3', '2025-01-01'),
(4, 'Moby Dick', 'Herman Melville', '9781503280786', 1851, 'Harper & Brothers', 'Adventure', 2, 'D4', '2025-01-01'),
(5, 'Pride and Prejudice', 'Jane Austen', '9781503290563', 1813, 'T. Egerton', 'Romance', 6, 'E5', '2025-01-01'),
(6, 'The Hobbit', 'J.R.R. Tolkien', '9780547928227', 1937, 'Allen & Unwin', 'Fantasy', 7, 'F6', '2025-01-01'),
(7, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '9780590353427', 1997, 'Bloomsbury', 'Fantasy', 8, 'G7', '2025-01-01'),
(8, 'The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 1951, 'Little, Brown and Company', 'Classic', 6, 'H8', '2025-01-01'),
(9, 'The Alchemist', 'Paulo Coelho', '9780061122415', 1988, 'HarperTorch', 'Adventure', 9, 'I9', '2025-01-01'),
(10, 'The Da Vinci Code', 'Dan Brown', '9780307474278', 2003, 'Doubleday', 'Thriller', 5, 'J10', '2025-01-01'),
(11, 'Animal Farm', 'George Orwell', '9780451526342', 1945, 'Secker & Warburg', 'Political Satire', 4, 'K11', '2025-01-01'),
(12, 'The Road', 'Cormac McCarthy', '9780307387899', 2006, 'Alfred A. Knopf', 'Post-Apocalyptic', 3, 'L12', '2025-01-01'),
(13, 'Jane Eyre', 'Charlotte Bronte', '9780141441146', 1847, 'Smith, Elder & Co.', 'Classic', 5, 'M13', '2025-01-01'),
(14, 'The Fault in Our Stars', 'John Green', '9780525478812', 2012, 'Dutton Books', 'Romance', 7, 'N14', '2025-01-01'),
(15, 'Brave New World', 'Aldous Huxley', '9780060850524', 1932, 'Chatto & Windus', 'Dystopian', 3, 'O15', '2025-01-01'),
(16, 'Gone Girl', 'Gillian Flynn', '9780307588371', 2012, 'Crown Publishing Group', 'Thriller', 6, 'P16', '2025-01-01'),
(17, 'The Shining', 'Stephen King', '9780307743657', 1977, 'Doubleday', 'Horror', 2, 'Q17', '2025-01-01'),
(18, 'It', 'Stephen King', '9781501142970', 1986, 'Viking Press', 'Horror', 1, 'R18', '2025-01-01'),
(19, 'The Book Thief', 'Markus Zusak', '9780375842207', 2005, 'Picador', 'Historical Fiction', 8, 'S19', '2025-01-01'),
(20, 'Life of Pi', 'Yann Martel', '9780156027328', 2001, 'Harcourt', 'Adventure', 4, 'T20', '2025-01-01');



-- 12. Library_Issues Table
CREATE TABLE Library_Issues (
    Issue_ID INT PRIMARY KEY,
    Book_ID INT,
    Student_ID INT,
    Issue_Date DATE,
    Return_Date DATE,
    Due_Date DATE,
    Fine_Amount DECIMAL(10, 2),
    Issued_By VARCHAR(50),
    Returned_By VARCHAR(50),
    Status VARCHAR(20)
);


drop table  Library_Issues;

use dnyanasadhana_college;

-- insert 20 reords

-- Insert 20 records into the Library_Issues table
INSERT INTO Library_Issues (Issue_ID, Book_ID, Student_ID, Issue_Date, Return_Date, Due_Date, Fine_Amount, Issued_By, Returned_By, Status)
VALUES 

(1, 10, 1, '2024-12-01', '2024-12-10', '2024-12-08', 0.00, 'Librarian_A', 'Librarian_B', 'Returned'),
(2, 3, 2, '2024-12-02', '2024-12-12', '2024-12-10', 5.00, 'Librarian_A', 'Librarian_C', 'Returned'),
(3, 14, 3, '2024-12-03', NULL, '2024-12-15', 0.00, 'Librarian_B', NULL, 'Issued'),
(4, 4, 9, '2024-12-05', '2024-12-20', '2024-12-18', 10.00, 'Librarian_C', 'Librarian_B', 'Returned'),
(5, 3, 5, '2024-12-06', NULL, '2024-12-25', 0.00, 'Librarian_A', NULL, 'Issued'),
(6, 6, 6, '2024-12-07', '2024-12-14', '2024-12-12', 0.00, 'Librarian_C', 'Librarian_B', 'Returned'),
(7, 17, 7, '2024-12-08', '2024-12-18', '2024-12-16', 15.00, 'Librarian_B', 'Librarian_C', 'Returned'),
(8, 8, 13, '2024-12-10', NULL, '2024-12-20', 0.00, 'Librarian_A', NULL, 'Issued'),
(9, 9, 9, '2024-12-11', '2024-12-21', '2024-12-19', 0.00, 'Librarian_C', 'Librarian_B', 'Returned'),
(10, 10, 4, '2024-12-12', NULL, '2024-12-22', 0.00, 'Librarian_B', NULL, 'Issued'),
(11, 18, 11, '2024-12-13', '2024-12-23', '2024-12-20', 0.00, 'Librarian_C', 'Librarian_B', 'Returned'),
(12, 3, 12, '2024-12-14', NULL, '2024-12-25', 0.00, 'Librarian_A', NULL, 'Issued'),
(13, 13, 13, '2024-12-15', NULL, '2024-12-26', 0.00, 'Librarian_B', NULL, 'Issued'),
(14, 19, 2, '2024-12-16', NULL, '2024-12-27', 0.00, 'Librarian_A', NULL, 'Issued'),
(15, 15, 15, '2024-12-17', '2024-12-30', '2024-12-28', 0.00, 'Librarian_C', 'Librarian_A', 'Returned'),
(16, 7, 16, '2024-12-18', '2024-12-31', '2024-12-29', 0.00, 'Librarian_A', 'Librarian_B', 'Returned'),
(17, 17, 17, '2024-12-19', NULL, '2024-12-30', 0.00, 'Librarian_B', NULL, 'Issued'),
(18, 3, 18, '2024-12-20', NULL, '2024-12-31', 0.00, 'Librarian_C', NULL, 'Issued'),
(19, 4, 7, '2024-12-21', NULL, '2025-01-01', 0.00, 'Librarian_A', NULL, 'Issued'),
(20, 7, 20, '2024-12-22', '2025-01-02', '2025-01-01', 20.00, 'Librarian_B', 'Librarian_C', 'Returned');

truncate table Library_Issues;

-- 13.Timetables table
-- Create Table: Timetables
CREATE TABLE Timetables (
    Timetable_ID INT PRIMARY KEY,
    Course_ID INT,
    Day VARCHAR(20),
    Time VARCHAR(20),
    Room_ID INT,
    Semester VARCHAR(20),
    Instructor_ID INT,
    Created_By VARCHAR(50),
    Creation_Date DATE,
    Updated_Date DATE,
    FOREIGN KEY (Room_ID) REFERENCES Classrooms(Room_ID)
    on delete set null
    on update cascade
);

drop database dnyanasadhana_college;
create database dnyanasadhana_college;
use dnyanasadhana_college;

drop table Timetables;

-- Insert Records into Timetables
INSERT INTO Timetables (Timetable_ID, Course_ID, Day, Time, Room_ID, Semester, Instructor_ID, Created_By, Creation_Date, Updated_Date)
VALUES 
(1, 101, 'Monday', '9:00 AM', 1, 'Fall 2025', 301, 'Admin1', '2025-01-01', '2025-01-02'),
(2, 102, 'Tuesday', '10:00 AM', 2, 'Fall 2025', 302, 'Admin2', '2025-01-01', '2025-01-02'),
(3, 103, 'Wednesday', '11:00 AM', 3, 'Spring 2025', 303, 'Admin3', '2025-01-01', '2025-01-02'),
(4, 104, 'Thursday', '12:00 PM', 13, 'Spring 2025', 304, 'Admin4', '2025-01-01', '2025-01-02'),
(5, 105, 'Friday', '1:00 PM', 16, 'Summer 2025', 305, 'Admin5', '2025-01-01', '2025-01-02'),
(6, 101, 'Monday', '2:00 PM', 11, 'Fall 2025', 306, 'Admin6', '2025-01-01', '2025-01-02'),
(7, 102, 'Tuesday', '3:00 PM', 17, 'Fall 2025', 307, 'Admin7', '2025-01-01', '2025-01-02'),
(8, 103, 'Wednesday', '4:00 PM', 8, 'Spring 2025', 308, 'Admin8', '2025-01-01', '2025-01-02'),
(9, 104, 'Thursday', '5:00 PM', 6, 'Spring 2025', 309, 'Admin9', '2025-01-01', '2025-01-02'),
(10, 105, 'Friday', '6:00 PM', 18, 'Summer 2025', 310, 'Admin10', '2025-01-01', '2025-01-02'),
(11, 101, 'Monday', '7:00 AM', 4, 'Fall 2025', 311, 'Admin11', '2025-01-01', '2025-01-02'),
(12, 102, 'Tuesday', '8:00 AM', 2, 'Fall 2025', 312, 'Admin12', '2025-01-01', '2025-01-02'),
(13, 103, 'Wednesday', '9:00 AM', 3, 'Spring 2025', 313, 'Admin13', '2025-01-01', '2025-01-02'),
(14, 104, 'Thursday', '10:00 AM', 19, 'Spring 2025', 314, 'Admin14', '2025-01-01', '2025-01-02'),
(15, 105, 'Friday', '11:00 AM', 20, 'Summer 2025', 315, 'Admin15', '2025-01-01', '2025-01-02'),
(16, 101, 'Monday', '12:00 PM', 20, 'Fall 2025', 316, 'Admin16', '2025-01-01', '2025-01-02'),
(17, 102, 'Tuesday', '1:00 PM', 13, 'Fall 2025', 317, 'Admin17', '2025-01-01', '2025-01-02'),
(18, 103, 'Wednesday', '2:00 PM', 7, 'Spring 2025', 318, 'Admin18', '2025-01-01', '2025-01-02'),
(19, 104, 'Thursday', '3:00 PM', 12, 'Spring 2025', 319, 'Admin19', '2025-01-01', '2025-01-02'),
(20, 105, 'Friday', '4:00 PM', 8, 'Summer 2025', 320, 'Admin20', '2025-01-01', '2025-01-02');


-- 14. Clubs Table
CREATE TABLE Clubs (
    Club_ID INT PRIMARY KEY,
    Club_Name VARCHAR(100),
    Description VARCHAR(200),
    Advisor_ID INT,
    President_ID INT,
    Founded_Year INT,
    Meeting_Schedule VARCHAR(100),
    Number_Of_Members INT,
    Email VARCHAR(100),
    Contact_Number VARCHAR(15)
    
);

drop table Clubs;

-- Insert Records into Clubs
INSERT INTO Clubs (Club_ID, Club_Name, Description, Advisor_ID, President_ID, Founded_Year, Meeting_Schedule, Number_Of_Members, Email, Contact_Number)
VALUES 
(1, 'Debate Club', 'A club for public speaking and debates', 1, 201, 2005, 'Monday, Wednesday 5 PM', 30, 'debate@college.edu', '9876543210'),
(2, 'Sports Club', 'Promotes fitness and sports activities', 5, 202, 2008, 'Tuesday, Thursday 4 PM', 50, 'sports@college.edu', '9876543211'),
(3, 'Music Club', 'For music enthusiasts and performers', 3, 13, 2010, 'Friday 6 PM', 20, 'music@college.edu', '9876543212'),
(4, 'Photography Club', 'For aspiring photographers', 19, 204, 2012, 'Wednesday 3 PM', 15, 'photo@college.edu', '9876543213'),
(5, 'Art Club', 'For artists and painters', 11, 205, 2007, 'Monday, Friday 2 PM', 25, 'art@college.edu', '9876543214'),
(6, 'Drama Club', 'For drama and theater enthusiasts', 14, 206, 2009, 'Tuesday, Thursday 5 PM', 35, 'drama@college.edu', '9876543215'),
(7, 'Science Club', 'For students interested in science experiments', 15, 207, 2011, 'Monday 4 PM', 40, 'science@college.edu', '9876543216'),
(8, 'Technology Club', 'For tech lovers and enthusiasts', 6, 208, 2013, 'Thursday 6 PM', 45, 'tech@college.edu', '9876543217'),
(9, 'Literature Club', 'For book readers and writers', 8, 209, 2014, 'Friday 4 PM', 20, 'literature@college.edu', '9876543218'),
(10, 'Cultural Club', 'Promoting cultural diversity and activities', 9, 210, 2006, 'Monday, Wednesday 7 PM', 50, 'culture@college.edu', '9876543219'),
(11, 'Chess Club', 'For chess players and enthusiasts', 20, 211, 2008, 'Tuesday 3 PM', 10, 'chess@college.edu', '9876543220'),
(12, 'Environment Club', 'For promoting environmental awareness', 13, 212, 2007, 'Wednesday 4 PM', 30, 'environment@college.edu', '9876543221'),
(13, 'Coding Club', 'For programming and coding enthusiasts', 1, 213, 2015, 'Thursday 5 PM', 60, 'coding@college.edu', '9876543222'),
(14, 'Dance Club', 'For dancers and performers', 3, 214, 2012, 'Monday 6 PM', 25, 'dance@college.edu', '9876543223'),
(15, 'History Club', 'For history lovers and learners', 8, 215, 2009, 'Friday 3 PM', 15, 'history@college.edu', '9876543224'),
(16, 'Travel Club', 'For students who love traveling and exploration', 4, 216, 2010, 'Tuesday 6 PM', 20, 'travel@college.edu', '9876543225'),
(17, 'Business Club', 'For aspiring entrepreneurs and business people', 5, 217, 2014, 'Wednesday 5 PM', 50, 'business@college.edu', '9876543226'),
(18, 'Cooking Club', 'For cooking enthusiasts', 16, 218, 2016, 'Thursday 3 PM', 40, 'cooking@college.edu', '9876543227'),
(19, 'Film Club', 'For movie lovers and film critics', 15, 219, 2015, 'Monday 5 PM', 30, 'film@college.edu', '9876543228'),
(20, 'Adventure Club', 'For those interested in adventure sports', 16, 220, 2017, 'Friday 6 PM', 20, 'adventure@college.edu', '9876543229');



-- 15. Club_Members Table
CREATE TABLE Club_Members (
    Membership_ID INT PRIMARY KEY,
    Club_ID INT,
    Student_ID INT,
    Join_Date DATE,
    Role VARCHAR(50),
    Active_Member BOOLEAN,
    Last_Activity_Date DATE,
    Membership_Status VARCHAR(50),
    Feedback VARCHAR(200),
    Points_Earned INT,
    foreign key (Club_ID) references  Clubs (Club_ID)
);

drop table Club_Members;

-- Insert Records into Club_Members
INSERT INTO Club_Members (Membership_ID, Club_ID, Student_ID, Join_Date, Role, Active_Member, Last_Activity_Date, Membership_Status, Feedback, Points_Earned)
VALUES 
(1, 1, 1, '2025-01-01', 'President', TRUE, '2025-01-05', 'Active', 'Excellent leadership skills', 50),
(2, 1, 12, '2025-01-02', 'Member', TRUE, '2025-01-06', 'Active', 'Great debater', 40),
(3, 2, 13, '2025-01-03', 'President', TRUE, '2025-01-07', 'Active', 'Motivated and fit', 55),
(4, 2, 4, '2025-01-04', 'Member', TRUE, '2025-01-08', 'Active', 'Active participant', 45),
(5, 3, 15, '2025-01-05', 'Member', TRUE, '2025-01-09', 'Active', 'Amazing voice', 35),
(6, 3, 6, '2025-01-06', 'Member', TRUE, '2025-01-10', 'Active', 'Love music', 30),
(7, 4, 17, '2025-01-07', 'Member', TRUE, '2025-01-11', 'Active', 'Creative thinker', 25),
(8, 4, 8, '2025-01-08', 'Member', TRUE, '2025-01-12', 'Active', 'Good at photography', 40),
(9, 5, 19, '2025-01-09', 'President', TRUE, '2025-01-13', 'Active', 'Excellent artist', 50),
(10, 5, 10, '2025-01-10', 'Member', TRUE, '2025-01-14', 'Active', 'Great at drawing', 45),
(11, 6, 11, '2025-01-11', 'President', TRUE, '2025-01-15', 'Active', 'Amazing actor', 55),
(12, 6, 2, '2025-01-12', 'Member', TRUE, '2025-01-16', 'Active', 'Creative performances', 35),
(13, 7, 3, '2025-01-13', 'Member', TRUE, '2025-01-17', 'Active', 'Scientific mind', 45),
(14, 7, 14, '2025-01-14', 'Member', TRUE, '2025-01-18', 'Active', 'Curious and inquisitive', 30),
(15, 8, 5, '2025-01-15', 'President', TRUE, '2025-01-19', 'Active', 'Tech savvy', 50),
(16, 8, 12, '2025-01-16', 'Member', TRUE, '2025-01-20', 'Active', 'Good at programming', 40),
(17, 9, 7, '2025-01-17', 'President', TRUE, '2025-01-21', 'Active', 'Love literature', 45),
(18, 9, 18, '2025-01-18', 'Member', TRUE, '2025-01-22', 'Active', 'Great writer', 35),
(19, 10, 9, '2025-01-19', 'Member', TRUE, '2025-01-23', 'Active', 'Culturally aware', 40),
(20, 10, 10, '2025-01-20', 'Member', TRUE, '2025-01-24', 'Active', 'Diverse knowledge', 30);


-- 16. Events Table
CREATE TABLE Events (
    Event_ID INT PRIMARY KEY,
    Event_Name VARCHAR(100),
    Organizer_ID INT,
    Event_Date DATE,
    Venue VARCHAR(100),
    Number_Of_Attendees INT,
    Event_Type VARCHAR(50),
    Budget DECIMAL(10, 2),
    Sponsors VARCHAR(200),
    Feedback_Score DECIMAL(5, 2)
    
);

-- Insert Records into Events
INSERT INTO Events (Event_ID, Event_Name, Organizer_ID, Event_Date, Venue, Number_Of_Attendees, Event_Type, Budget, Sponsors, Feedback_Score)
VALUES 
(1, 'Annual Cultural Fest', 1, '2025-02-15', 'Main Auditorium', 500, 'Cultural', 20000.00, 'ABC Corp, XYZ Ltd', 4.5),
(2, 'Tech Innovation Day', 2, '2025-03-10', 'IT Building', 300, 'Technical', 15000.00, 'TechWorld Inc', 4.7),
(3, 'Literary Meet-Up', 3, '2025-04-05', 'Library Hall', 100, 'Literary', 5000.00, 'Publishing House', 4.3),
(4, 'Sports Championship', 4, '2025-05-20', 'Sports Ground', 400, 'Sports', 10000.00, 'SportsGear Co', 4.6),
(5, 'Music Fest', 5, '2025-06-18', 'Open Grounds', 600, 'Cultural', 25000.00, 'MusicStream Co', 4.8),
(6, 'Photography Workshop', 6, '2025-07-12', 'Studio Room', 50, 'Art', 3000.00, 'CameraWorld', 4.2),
(7, 'Art Exhibition', 7, '2025-08-25', 'Art Gallery', 200, 'Art', 8000.00, 'Creative Minds', 4.4),
(8, 'Drama Night', 8, '2025-09-15', 'Drama Hall', 250, 'Cultural', 12000.00, 'StageMasters', 4.6),
(9, 'Science Fair', 9, '2025-10-05', 'Science Block', 350, 'Technical', 18000.00, 'Innovators Hub', 4.9),
(10, 'Robotics Competition', 10, '2025-11-10', 'Tech Lab', 150, 'Technical', 20000.00, 'RoboMakers Inc', 4.8),
(11, 'Literature Awards', 3, '2025-12-12', 'Library Hall', 150, 'Literary', 7000.00, 'BookWorld', 4.5),
(12, 'Charity Marathon', 4, '2025-01-25', 'City Park', 1000, 'Sports', 5000.00, 'HealthFirst', 4.7),
(13, 'Coding Hackathon', 2, '2025-03-28', 'IT Building', 200, 'Technical', 15000.00, 'CodeCraft Inc', 4.6),
(14, 'Dance Competition', 5, '2025-04-15', 'Open Grounds', 300, 'Cultural', 18000.00, 'MoveMasters', 4.7),
(15, 'Science Seminar', 9, '2025-06-10', 'Auditorium', 200, 'Technical', 10000.00, 'Educators Hub', 4.5),
(16, 'Painting Contest', 7, '2025-07-20', 'Art Gallery', 100, 'Art', 4000.00, 'CanvasWorks', 4.3),
(17, 'Annual Alumni Meet', 1, '2025-08-30', 'Main Auditorium', 700, 'Social', 30000.00, 'Alumni Club', 4.9),
(18, 'Yoga Retreat', 4, '2025-09-10', 'Recreation Center', 80, 'Health', 6000.00, 'WellnessCo', 4.8),
(19, 'Book Reading Session', 3, '2025-10-15', 'Library Hall', 50, 'Literary', 2000.00, 'ReadMore Inc', 4.3),
(20, 'Film Screening', 8, '2025-11-20', 'Drama Hall', 180, 'Cultural', 8000.00, 'CinemaFans', 4.6);



-- 17. Scholarships Table
CREATE TABLE Scholarships (
    Scholarship_ID INT PRIMARY KEY,
    Scholarship_Name VARCHAR(100),
    Amount DECIMAL(10, 2),
    Eligibility_Criteria VARCHAR(200),
    Application_Start_Date DATE,
    Application_End_Date DATE,
    Award_Date DATE,
    Award_Count INT,
    Contact_Email VARCHAR(100),
    Contact_Number VARCHAR(15)
);

-- Insert Records into Scholarships
INSERT INTO Scholarships (Scholarship_ID, Scholarship_Name, Amount, Eligibility_Criteria, Application_Start_Date, Application_End_Date, Award_Date, Award_Count, Contact_Email, Contact_Number)
VALUES
(1, 'Merit-Based Scholarship', 5000.00, 'Top 5% in academics', '2025-01-01', '2025-03-31', '2025-05-15', 10, 'merit@university.edu', '123-456-7890'),
(2, 'Sports Scholarship', 3000.00, 'Outstanding performance in sports', '2025-02-01', '2025-04-30', '2025-06-15', 5, 'sports@university.edu', '123-456-7891'),
(3, 'Research Grant', 8000.00, 'Postgraduate research proposal', '2025-01-15', '2025-05-15', '2025-07-01', 7, 'research@university.edu', '123-456-7892'),
(4, 'Arts Scholarship', 4000.00, 'Excellence in fine arts', '2025-03-01', '2025-06-01', '2025-08-01', 6, 'arts@university.edu', '123-456-7893'),
(5, 'Financial Aid Scholarship', 6000.00, 'Low-income families', '2025-01-10', '2025-04-10', '2025-06-25', 15, 'financialaid@university.edu', '123-456-7894'),
(6, 'Leadership Award', 2500.00, 'Leadership roles in clubs or events', '2025-02-15', '2025-05-15', '2025-07-10', 10, 'leadership@university.edu', '123-456-7895'),
(7, 'STEM Scholarship', 7000.00, 'Top performance in STEM fields', '2025-01-20', '2025-04-20', '2025-06-30', 8, 'stem@university.edu', '123-456-7896'),
(8, 'Community Service Award', 3500.00, 'Active participation in community service', '2025-03-05', '2025-06-05', '2025-08-10', 10, 'community@university.edu', '123-456-7897'),
(9, 'Entrepreneurship Scholarship', 5000.00, 'Innovative business proposal', '2025-02-10', '2025-05-10', '2025-07-20', 5, 'entrepreneur@university.edu', '123-456-7898'),
(10, 'Diversity Scholarship', 4500.00, 'Diverse cultural background', '2025-01-25', '2025-04-25', '2025-06-20', 12, 'diversity@university.edu', '123-456-7899'),
(11, 'Graduate Scholarship', 6000.00, 'Graduating students with academic excellence', '2025-01-05', '2025-03-05', '2025-05-25', 10, 'graduate@university.edu', '123-456-7800'),
(12, 'Environmental Grant', 5500.00, 'Projects in environmental conservation', '2025-02-20', '2025-05-20', '2025-07-15', 6, 'environment@university.edu', '123-456-7801'),
(13, 'Innovation Scholarship', 7500.00, 'Innovative technology ideas', '2025-01-18', '2025-04-18', '2025-06-22', 8, 'innovation@university.edu', '123-456-7802'),
(14, 'Music Scholarship', 4000.00, 'Excellence in music', '2025-03-15', '2025-06-15', '2025-08-30', 5, 'music@university.edu', '123-456-7803'),
(15, 'International Student Grant', 5000.00, 'Non-resident international students', '2025-01-22', '2025-04-22', '2025-06-18', 10, 'intlstudents@university.edu', '123-456-7804'),
(16, 'Volunteer Scholarship', 3000.00, 'Significant volunteer work', '2025-02-25', '2025-05-25', '2025-07-05', 10, 'volunteer@university.edu', '123-456-7805'),
(17, 'Teaching Assistant Grant', 4500.00, 'Proven teaching skills', '2025-01-30', '2025-04-30', '2025-06-25', 7, 'teaching@university.edu', '123-456-7806'),
(18, 'Cultural Exchange Scholarship', 6000.00, 'Participation in exchange programs', '2025-02-05', '2025-05-05', '2025-07-30', 8, 'culturexchange@university.edu', '123-456-7807'),
(19, 'Health Sciences Scholarship', 7000.00, 'Top performance in health sciences', '2025-01-28', '2025-04-28', '2025-06-29', 5, 'health@university.edu', '123-456-7808'),
(20, 'Undergraduate Research Grant', 5000.00, 'Undergraduate research projects', '2025-01-12', '2025-03-12', '2025-05-20', 15, 'ugresearch@university.edu', '123-456-7809');



-- 19. Hostel Table
CREATE TABLE Hostel (
    Hostel_ID INT PRIMARY KEY,
    Hostel_Name VARCHAR(50),
    Capacity INT,
    Warden_ID INT,
    Address VARCHAR(100),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Established_Year INT,
    Number_Of_Rooms INT,
    Amenities VARCHAR(200)

);

drop table Hostel;

-- Insert Records into Hostel
INSERT INTO Hostel (Hostel_ID, Hostel_Name, Capacity, Warden_ID, Address, Phone_Number, Email, Established_Year, Number_Of_Rooms, Amenities)
VALUES
(1, 'Alpha House', 200, 1, '123 Elm St', '123-456-7890', 'alpha@univhostel.edu', 1990, 50, 'Wi-Fi, Gym, Laundry'),
(2, 'Beta House', 150, 3, '456 Maple St', '123-456-7891', 'beta@univhostel.edu', 1995, 40, 'Wi-Fi, Cafeteria'),
(3, 'Gamma House', 250, 5, '789 Oak St', '123-456-7892', 'gamma@univhostel.edu', 2000, 60, 'Wi-Fi, Library'),
(4, 'Delta House', 300, 7, '321 Pine St', '123-456-7893', 'delta@univhostel.edu', 2010, 80, 'Wi-Fi, Gym, Parking'),
(5, 'Epsilon House', 180, 8, '654 Cedar St', '123-456-7894', 'epsilon@univhostel.edu', 2005, 45, 'Wi-Fi, Laundry'),
(6, 'Zeta House', 220, 9, '987 Birch St', '123-456-7895', 'zeta@univhostel.edu', 1998, 55, 'Wi-Fi, Cafeteria, Gym'),
(7, 'Eta House', 100, 14, '159 Walnut St', '123-456-7896', 'eta@univhostel.edu', 2015, 30, 'Wi-Fi, Study Rooms'),
(8, 'Theta House', 170, 11, '753 Spruce St', '123-456-7897', 'theta@univhostel.edu', 2018, 35, 'Wi-Fi, Recreation Room'),
(9, 'Iota House', 190, 19, '258 Fir St', '123-456-7898', 'iota@univhostel.edu', 2020, 40, 'Wi-Fi, Cafeteria'),
(10, 'Kappa House', 200, 3, '369 Ash St', '123-456-7899', 'kappa@univhostel.edu', 1992, 50, 'Wi-Fi, Gym, Parking'),
(11, 'Lambda House', 150, 20, '753 Palm St', '123-456-7800', 'lambda@univhostel.edu', 1994, 40, 'Wi-Fi, Laundry'),
(12, 'Mu House', 230, 14, '12 Willow St', '123-456-7801', 'mu@univhostel.edu', 2011, 60, 'Wi-Fi, Cafeteria, Library'),
(13, 'Nu House', 240, 17, '17 Cypress St', '123-456-7802', 'nu@univhostel.edu', 1997, 65, 'Wi-Fi, Gym, Parking'),
(14, 'Xi House', 210, 1, '18 Redwood St', '123-456-7803', 'xi@univhostel.edu', 2006, 55, 'Wi-Fi, Cafeteria, Recreation Room'),
(15, 'Omicron House', 2, 18, '123 Teak St', '123-456-7804', 'omicron@univhostel.edu', 2009, 35, 'Wi-Fi, Gym, Study Rooms'),
(16, 'Pi House', 250, 7, '2 Maplewood St', '123-456-7805', 'pi@univhostel.edu', 2021, 70, 'Wi-Fi, Laundry, Cafeteria'),
(17, 'Rho House', 200, 9, '5 Chestnut St', '123-456-7806', 'rho@univhostel.edu', 1993, 50, 'Wi-Fi, Gym, Parking'),
(18, 'Sigma House', 180, 4, '6 Pecan St', '123-456-7807', 'sigma@univhostel.edu', 1996, 45, 'Wi-Fi, Cafeteria, Library'),
(19, 'Tau House', 220, 8, '9 Mahogany St', '123-456-7808', 'tau@univhostel.edu', 2008, 60, 'Wi-Fi, Recreation Room, Parking'),
(20, 'Upsilon House', 18, 11, '987 Poplar St', '123-456-7809', 'upsilon@univhostel.edu', 2022, 80, 'Wi-Fi, Gym, Laundry, Cafeteria');



-- 20. Sports Table
CREATE TABLE Sports (
    Sport_ID INT PRIMARY KEY,
    Sport_Name VARCHAR(50),
    Coach_ID INT,
    Number_Of_Players INT,
    Equipment_List VARCHAR(200),
    Training_Timings VARCHAR(100),
    Practice_Location VARCHAR(100),
    Number_Of_Teams INT,
    Established_Year INT,
    Contact_Number VARCHAR(15),
    FOREIGN KEY (Coach_ID) REFERENCES Staff(Staff_ID)
);

drop table Sports;
 
-- Insert Records into Sports
INSERT INTO Sports (Sport_ID, Sport_Name, Coach_ID, Number_Of_Players, Equipment_List, Training_Timings, Practice_Location, Number_Of_Teams, Established_Year, Contact_Number)
VALUES
(1, 'Basketball', 11, 12, 'Basketballs, Hoops, Jerseys', '6:00 PM - 8:00 PM', 'Gymnasium', 2, 1990, '123-456-7001'),
(2, 'Soccer', 13, 22, 'Soccer Balls, Nets, Jerseys', '4:00 PM - 6:00 PM', 'Soccer Field', 3, 1992, '123-456-7002'),
(3, 'Cricket', 2, 15, 'Bats, Balls, Helmets, Stumps', '7:00 AM - 9:00 AM', 'Cricket Ground', 2, 1988, '123-456-7003'),
(4, 'Tennis', 5, 8, 'Rackets, Balls, Nets', '5:00 PM - 7:00 PM', 'Tennis Court', 1, 1995, '123-456-7004'),
(5, 'Badminton', 18, 6, 'Rackets, Shuttlecocks, Nets', '6:00 AM - 8:00 AM', 'Indoor Court', 2, 2000, '123-456-7005'),
(6, 'Swimming', 15, 10, 'Swim Caps, Goggles, Swim Suits', '5:00 PM - 7:00 PM', 'Swimming Pool', 1, 1998, '123-456-7006'),
(7, 'Hockey', 8, 18, 'Hockey Sticks, Balls, Jerseys', '3:00 PM - 5:00 PM', 'Hockey Field', 2, 1985, '123-456-7007'),
(8, 'Volleyball', 9, 12, 'Volleyballs, Nets, Jerseys', '4:00 PM - 6:00 PM', 'Outdoor Court', 3, 1996, '123-456-7008'),
(9, 'Table Tennis', 19, 4, 'Table Tennis Bats, Balls, Nets', '5:00 PM - 6:30 PM', 'Indoor Arena', 2, 1993, '123-456-7009'),
(10, 'Athletics', 20, 20, 'Track Shoes, Stopwatches, Batons', '6:00 AM - 8:00 AM', 'Athletics Track', 4, 1991, '123-456-7010'),
(11, 'Karate', 16, 10, 'Karate Uniforms, Mats', '7:00 PM - 8:30 PM', 'Martial Arts Room', 1, 2005, '123-456-7011'),
(12, 'Gymnastics', 17, 8, 'Mats, Rings, Vaults', '6:00 PM - 8:00 PM', 'Gymnasium', 2, 2003, '123-456-7012'),
(13, 'Rowing', 2, 16, 'Boats, Life Jackets, Oars', '6:00 AM - 8:00 AM', 'Lake', 2, 1997, '123-456-7013'),
(14, 'Squash', 4, 6, 'Rackets, Balls', '4:00 PM - 6:00 PM', 'Squash Court', 1, 2002, '123-456-7014'),
(15, 'Cycling', 5, 10, 'Bicycles, Helmets, Jerseys', '6:00 AM - 8:00 AM', 'Cycling Track', 3, 1994, '123-456-7015'),
(16, 'Boxing', 20, 8, 'Gloves, Punching Bags, Mouth Guards', '5:00 PM - 7:00 PM', 'Boxing Ring', 1, 1999, '123-456-7016'),
(17, 'Rugby', 12, 15, 'Rugby Balls, Jerseys, Mouth Guards', '4:00 PM - 6:00 PM', 'Rugby Field', 2, 1992, '123-456-7017'),
(18, 'Archery', 14, 6, 'Bows, Arrows, Targets', '7:00 AM - 9:00 AM', 'Archery Range', 1, 1996, '123-456-7018'),
(19, 'Skating', 14, 10, 'Skates, Helmets, Pads', '5:00 PM - 6:30 PM', 'Skating Rink', 1, 2001, '123-456-7019'),
(20, 'Chess', 16, 2, 'Chess Boards, Clocks', '5:00 PM - 7:00 PM', 'Activity Room', 1, 2000, '123-456-7020');

truncate table Sports;


-- 21 placements table 

-- Create Placements Table
CREATE TABLE Placements (
    Placement_ID INT PRIMARY KEY,
    Student_ID INT,
    Company_Name VARCHAR(100),
    Job_Role VARCHAR(100),
    Package DECIMAL(10, 2),
    Placement_Date DATE,
    Location VARCHAR(100),
    Status VARCHAR(50),
    HR_Contact VARCHAR(100),
    Remarks VARCHAR(200)
    
);

drop table Placements;


-- Insert 20 Records into Placements Table
INSERT INTO Placements 
VALUES
(1, 2, 'Google', 'Software Engineer', 1500000, '2025-01-01', 'California', 'Accepted', 'hr@google.com', 'Top candidate'),
(2, 12, 'Microsoft', 'Data Analyst', 1200000, '2025-01-05', 'Washington', 'Accepted', 'hr@microsoft.com', 'Excellent performance'),
(3, 4, 'Amazon', 'Cloud Engineer', 1300000, '2025-01-10', 'Seattle', 'Accepted', 'hr@amazon.com', 'Recommended by professor'),
(4, 6, 'TCS', 'Business Analyst', 800000, '2025-01-12', 'Mumbai', 'Pending', 'hr@tcs.com', 'Awaiting confirmation'),
(5, 1, 'Infosys', 'System Engineer', 700000, '2025-01-15', 'Bangalore', 'Accepted', 'hr@infosys.com', 'Met all requirements'),
(6, 16, 'Accenture', 'Consultant', 850000, '2025-01-20', 'Hyderabad', 'Rejected', 'hr@accenture.com', 'Did not clear final round'),
(7, 17, 'Deloitte', 'Financial Analyst', 950000, '2025-01-22', 'New York', 'Accepted', 'hr@deloitte.com', 'Strong interview'),
(8, 18, 'Wipro', 'AI Specialist', 1000000, '2025-01-25', 'Chennai', 'Accepted', 'hr@wipro.com', 'Promising candidate'),
(9, 9, 'Capgemini', 'Data Scientist', 1100000, '2025-01-28', 'Pune', 'Accepted', 'hr@capgemini.com', 'Cleared with distinction'),
(10, 11, 'IBM', 'Software Developer', 1200000, '2025-02-01', 'Bangalore', 'Pending', 'hr@ibm.com', 'Under consideration'),
(11, 1, 'Cognizant', 'Cloud Engineer', 1150000, '2025-02-03', 'Noida', 'Accepted', 'hr@cognizant.com', 'Experienced in AWS'),
(12, 2, 'HCL', 'Software Tester', 750000, '2025-02-07', 'Lucknow', 'Rejected', 'hr@hcl.com', 'Lack of test cases knowledge'),
(13, 13, 'EY', 'Auditor', 1050000, '2025-02-10', 'London', 'Accepted', 'hr@ey.com', 'Great problem-solving skills'),
(14, 5, 'PwC', 'Tax Consultant', 900000, '2025-02-15', 'Sydney', 'Accepted', 'hr@pwc.com', 'Top in group discussion'),
(15, 15, 'KPMG', 'Risk Analyst', 920000, '2025-02-18', 'Singapore', 'Accepted', 'hr@kpmg.com', 'Fluent in risk assessment'),
(16, 11, 'Tech Mahindra', 'UI/UX Designer', 850000, '2025-02-20', 'Mumbai', 'Accepted', 'hr@techm.com', 'Creative portfolio'),
(17, 8, 'Oracle', 'Database Administrator', 1100000, '2025-02-25', 'Hyderabad', 'Accepted', 'hr@oracle.com', 'SQL expertise'),
(18, 9, 'Zomato', 'Operations Manager', 700000, '2025-03-01', 'Delhi', 'Accepted', 'hr@zomato.com', 'Good managerial skills'),
(19, 3, 'Swiggy', 'Logistics Head', 720000, '2025-03-03', 'Delhi', 'Pending', 'hr@swiggy.com', 'Under observation'),
(20, 12, 'Tesla', 'Mechanical Engineer', 2000000, '2025-03-10', 'California', 'Accepted', 'hr@tesla.com', 'Highly recommended by faculty');

truncate table Placements;

-- 22. Fees table 

-- Create Fees Table
CREATE TABLE Fees (
    Fee_ID INT PRIMARY KEY,
    Student_ID INT,
    Semester VARCHAR(20),
    Fee_Amount DECIMAL(10, 2),
    Due_Date DATE,
    Paid_Date DATE,
    Payment_Status VARCHAR(50),
    Payment_Method VARCHAR(50),
    Receipt_Number VARCHAR(50),
    Remarks VARCHAR(200)
);

drop table fees;

-- Insert 20 Records into Fees Table
INSERT INTO Fees VALUES

(1, 2, 'Fall 2025', 50000, '2025-01-10', '2025-01-05', 'Paid', 'Credit Card', 'REC101', 'Early payment discount applied'),
(2, 4, 'Fall 2025', 52000, '2025-01-15', '2025-01-12', 'Paid', 'Bank Transfer', 'REC102', 'Full payment made'),
(3, 13, 'Fall 2025', 49000, '2025-01-20', NULL, 'Pending', NULL, NULL, 'Awaiting payment'),
(4, 14, 'Fall 2025', 51000, '2025-01-25', '2025-01-24', 'Paid', 'Cash', 'REC104', 'On-time payment'),
(5, 1, 'Fall 2025', 53000, '2025-02-01', NULL, 'Overdue', NULL, NULL, 'Late payment charges applicable'),
(6, 10, 'Spring 2025', 48000, '2025-02-15', '2025-02-14', 'Paid', 'Credit Card', 'REC106', 'Discount applied'),
(7, 18, 'Spring 2025', 55000, '2025-02-20', NULL, 'Pending', NULL, NULL, 'Scholarship adjustment pending'),
(8, 10, 'Spring 2025', 60000, '2025-02-25', '2025-02-23', 'Paid', 'Bank Transfer', 'REC108', 'Late fee waived'),
(9, 9, 'Spring 2025', 62000, '2025-03-01', '2025-02-28', 'Paid', 'UPI', 'REC109', 'Scholarship applied'),
(10, 11, 'Spring 2025', 49000, '2025-03-05', '2025-03-04', 'Paid', 'Cash', 'REC110', 'All dues cleared'),
(11, 1, 'Fall 2025', 52000, '2025-03-10', '2025-03-09', 'Paid', 'Credit Card', 'REC111', 'Advance payment'),
(12, 3, 'Fall 2025', 54000, '2025-03-15', NULL, 'Pending', NULL, NULL, 'Installment payment pending'),
(13, 19, 'Fall 2025', 50000, '2025-03-20', '2025-03-18', 'Paid', 'Bank Transfer', 'REC113', 'Full payment made'),
(14, 4, 'Fall 2025', 51000, '2025-03-25', NULL, 'Overdue', NULL, NULL, 'Late charges applicable'),
(15, 20, 'Fall 2025', 53000, '2025-03-30', '2025-03-28', 'Paid', 'UPI', 'REC115', 'Payment cleared'),
(16, 16, 'Spring 2025', 60000, '2025-04-05', '2025-04-04', 'Paid', 'Cash', 'REC116', 'Final payment made'),
(17, 17, 'Spring 2025', 62000, '2025-04-10', NULL, 'Pending', NULL, NULL, 'Awaiting bank confirmation'),
(18, 16, 'Spring 2025', 58000, '2025-04-15', '2025-04-13', 'Paid', 'Bank Transfer', 'REC118', 'Early payment discount'),
(19, 9, 'Spring 2025', 55000, '2025-04-20', '2025-04-18', 'Paid', 'UPI', 'REC119', 'Scholarship balance settled'),
(20, 12, 'Spring 2025', 60000, '2025-04-25', '2025-04-24', 'Paid', 'Credit Card', 'REC120', 'Payment successful');

truncate table fees;

-- 23 Alumni table 

-- Create Alumni Table
CREATE TABLE Alumni (
    Alumni_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Graduation_Year INT,
    Degree VARCHAR(100),
    Department VARCHAR(100),
    Current_Job_Title VARCHAR(100),
    Company_Name VARCHAR(100),
    Email VARCHAR(100),
    Contact_Number VARCHAR(15),
    Country VARCHAR(50),
    Remarks VARCHAR(200)
);

drop table alumni;

-- Insert 20 Records into Alumni Table
INSERT INTO Alumni
VALUES
(1, 'Alice Johnson', 2020, 'B.Tech', 'Computer Science', 'Software Engineer', 'Google', 'alice.johnson@gmail.com', '1234567890', 'USA', 'Actively contributing to alumni events'),
(2, 'Bob Smith', 2018, 'MBA', 'Business Administration', 'Marketing Manager', 'Procter & Gamble', 'bob.smith@gmail.com', '9876543210', 'UK', 'Mentor to students in marketing'),
(3, 'Catherine Lee', 2019, 'M.Sc', 'Mathematics', 'Data Scientist', 'Amazon', 'catherine.lee@gmail.com', '4567891230', 'Canada', 'Frequent guest lecturer'),
(4, 'David Brown', 2021, 'BBA', 'Finance', 'Financial Analyst', 'JP Morgan', 'david.brown@gmail.com', '1231231234', 'USA', 'Organizes alumni fundraising drives'),
(5, 'Emily Davis', 2017, 'B.Tech', 'Electrical Engineering', 'Project Manager', 'Tesla', 'emily.davis@gmail.com', '7897897890', 'Germany', 'Supporter of research projects'),
(6, 'Franklin Wilson', 2020, 'M.Tech', 'Mechanical Engineering', 'Design Engineer', 'BMW', 'franklin.wilson@gmail.com', '3216549870', 'Germany', 'Contributed to campus recruitment'),
(7, 'Grace Thomas', 2018, 'Ph.D.', 'Physics', 'Research Scientist', 'CERN', 'grace.thomas@gmail.com', '6541237890', 'Switzerland', 'Keynote speaker at seminars'),
(8, 'Henry Martinez', 2019, 'MBA', 'Operations', 'Operations Manager', 'FedEx', 'henry.martinez@gmail.com', '9873216540', 'USA', 'Actively mentoring students'),
(9, 'Isabella Moore', 2021, 'B.Arch', 'Architecture', 'Architect', 'Zaha Hadid Architects', 'isabella.moore@gmail.com', '7894561230', 'UK', 'Provided internship opportunities'),
(10, 'Jack Taylor', 2016, 'B.Tech', 'Information Technology', 'CTO', 'TechStartup Inc.', 'jack.taylor@gmail.com', '7418529630', 'India', 'Supporter of tech clubs'),
(11, 'Karen Lopez', 2020, 'B.Com', 'Commerce', 'Accountant', 'Deloitte', 'karen.lopez@gmail.com', '9638527410', 'Australia', 'Supports alumni network activities'),
(12, 'Liam Harris', 2017, 'MBA', 'HR Management', 'HR Manager', 'Accenture', 'liam.harris@gmail.com', '8527419630', 'Canada', 'Actively promotes university initiatives'),
(13, 'Mia Clark', 2019, 'M.Tech', 'Civil Engineering', 'Structural Engineer', 'AECOM', 'mia.clark@gmail.com', '4561237890', 'USA', 'Supports industry-academic collaborations'),
(14, 'Noah Allen', 2021, 'BBA', 'Marketing', 'Brand Manager', 'Unilever', 'noah.allen@gmail.com', '1237894560', 'India', 'Part of alumni marketing team'),
(15, 'Olivia Perez', 2018, 'M.Sc', 'Chemistry', 'Lab Analyst', 'Pfizer', 'olivia.perez@gmail.com', '3219876540', 'USA', 'Mentor for aspiring chemists'),
(16, 'Patrick Turner', 2020, 'B.Tech', 'Mechanical Engineering', 'Quality Engineer', 'Ford', 'patrick.turner@gmail.com', '6547891230', 'UK', 'Contributor to alumni newsletter'),
(17, 'Quinn Campbell', 2019, 'BBA', 'Finance', 'Investment Banker', 'Goldman Sachs', 'quinn.campbell@gmail.com', '9871236540', 'USA', 'Frequent campus recruiter'),
(18, 'Rachel Evans', 2017, 'M.Tech', 'Electrical Engineering', 'Electrical Designer', 'Siemens', 'rachel.evans@gmail.com', '4567893210', 'Germany', 'Organizer of alumni reunions'),
(19, 'Samuel King', 2018, 'MBA', 'Business Strategy', 'Consultant', 'McKinsey & Company', 'samuel.king@gmail.com', '7891234560', 'Australia', 'Provides career guidance'),
(20, 'Taylor Wright', 2021, 'B.Sc', 'Biotechnology', 'Research Associate', 'Genentech', 'taylor.wright@gmail.com', '8529637410', 'Canada', 'Part of alumni biotech group');

truncate table alumni;

-- 24 table Cafeteria 

-- Create Cafeteria Table
CREATE TABLE Cafeteria (
    Cafeteria_ID INT PRIMARY KEY,
    Cafeteria_Name VARCHAR(50),
    Location VARCHAR(100),
    Manager_Name VARCHAR(100),
    Seating_Capacity INT,
    Opening_Time TIME,
    Closing_Time TIME,
    Menu_Type VARCHAR(100),
    Contact_Number VARCHAR(15),
    Feedback_Rating DECIMAL(3, 2),
    Special_Offers VARCHAR(200)
    
);

drop table cafeteria;

-- Insert 20 Records into Cafeteria Table
INSERT INTO Cafeteria 
VALUES
(1, 'Campus Bites', 'Block A', 'Alice Johnson', 100, '08:00:00', '20:00:00', 'Multi-cuisine', '1234567890', 4.5, '10% off on weekends'),
(2, 'Food Haven', 'Block B', 'Bob Smith', 120, '07:30:00', '21:00:00', 'Vegetarian', '9876543210', 4.7, 'Free dessert with meal combo'),
(3, 'Snack Stop', 'Block C', 'Catherine Lee', 80, '09:00:00', '18:00:00', 'Snacks & Beverages', '4567891230', 4.3, 'Buy 1 get 1 on coffee'),
(4, 'Gourmet Corner', 'Block D', 'David Brown', 150, '08:00:00', '22:00:00', 'Continental', '7891234560', 4.8, 'Loyalty card discounts'),
(5, 'Healthy Bites', 'Block E', 'Emily Davis', 60, '07:00:00', '19:00:00', 'Health-focused', '1237894560', 4.6, 'Student meal plans available'),
(6, 'Quick Eats', 'Library Block', 'Franklin Wilson', 50, '08:30:00', '17:30:00', 'Fast Food', '7418529630', 4.2, 'Free soda with burger'),
(7, 'Campus Cafe', 'Main Building', 'Grace Thomas', 110, '07:00:00', '20:00:00', 'Coffee & Snacks', '9638527410', 4.9, 'Student discount on coffee'),
(8, 'Veggie Delight', 'Hostel Block', 'Henry Martinez', 90, '08:00:00', '21:00:00', 'Vegetarian', '8529637410', 4.4, 'Free soup with meal'),
(9, 'Taste Hub', 'Sports Complex', 'Isabella Moore', 130, '09:00:00', '19:30:00', 'Multi-cuisine', '4561237890', 4.7, 'Discount on group orders'),
(10, 'The Grill House', 'Block F', 'Jack Taylor', 140, '08:00:00', '22:00:00', 'Barbecue', '7894561230', 4.5, 'Special weekend barbecue menu'),
(11, 'Sweet Tooth', 'Block G', 'Karen Lopez', 70, '10:00:00', '18:00:00', 'Desserts', '6547893210', 4.6, 'Free topping with ice cream'),
(12, 'Campus Deli', 'Admin Block', 'Liam Harris', 100, '07:30:00', '20:30:00', 'Deli & Sandwiches', '9871236540', 4.3, 'Combo offers available'),
(13, 'Global Bites', 'Block H', 'Mia Clark', 150, '08:00:00', '21:00:00', 'International Cuisine', '3216549870', 4.9, 'Special discount for alumni'),
(14, 'Fruit & Juice', 'Block I', 'Noah Allen', 50, '09:00:00', '18:00:00', 'Juices & Fruits', '8527419630', 4.4, 'Free extra juice on weekdays'),
(15, 'Campus Feast', 'Block J', 'Olivia Perez', 120, '07:00:00', '19:30:00', 'Buffet', '9637418520', 4.8, 'Student loyalty program'),
(16, 'Taste Lounge', 'Hostel 2', 'Patrick Turner', 80, '08:30:00', '21:00:00', 'Multi-cuisine', '1472583690', 4.5, 'Seasonal discounts'),
(17, 'Chef’s Table', 'Block K', 'Quinn Campbell', 130, '09:00:00', '22:00:00', 'Fine Dining', '3217896540', 4.7, 'Special event discounts'),
(18, 'Daily Grinds', 'Block L', 'Rachel Evans', 90, '08:00:00', '19:00:00', 'Bakery & Coffee', '1597534860', 4.6, 'Buy 2 pastries, get 1 free'),
(19, 'Noodle Bowl', 'Block M', 'Samuel King', 60, '10:00:00', '21:00:00', 'Asian Cuisine', '6541239870', 4.5, 'Free drink with noodle combo'),
(20, 'Pizza Palace', 'Block N', 'Taylor Wright', 140, '08:00:00', '22:00:00', 'Pizzas & Sides', '9513574860', 4.8, 'Discounts on large orders');

truncate table cafeteria;

-- Table 25 Transportation

-- Create the table
CREATE TABLE Transportation (
    ID INT PRIMARY KEY,
    Mode VARCHAR(50),
    Capacity INT,
    Cost_per_Mile DECIMAL(5, 2),
    Speed_mph INT,
    Fuel_Type VARCHAR(50),
    Availability VARCHAR(20),
    Region VARCHAR(50),
    Environmental_Impact VARCHAR(20),
    Operator_Name VARCHAR(50),
    foreign key (id) references Cafeteria(Cafeteria_ID)
);

drop table Transportation;

-- Insert records into the table
INSERT INTO Transportation (ID, Mode, Capacity, Cost_per_Mile, Speed_mph, Fuel_Type, Availability, Region, Environmental_Impact, Operator_Name)
VALUES
(1, 'Bus', 50, 2.50, 40, 'Diesel', 'Available', 'Urban', 'Moderate', 'CityTransit'),
(2, 'Train', 200, 1.20, 80, 'Electric', 'Available', 'Regional', 'Low', 'RailLink'),
(3, 'Bicycle', 1, 0.00, 15, 'None', 'Available', 'Urban', 'None', 'EcoRide'),
(4, 'Car', 4, 0.50, 60, 'Gasoline', 'Available', 'Suburban', 'High', 'CarShare'),
(5, 'Plane', 180, 10.00, 500, 'Jet Fuel', 'Unavailable', 'International', 'Very High', 'Airways'),
(6, 'Truck', 2, 3.00, 50, 'Diesel', 'Available', 'Rural', 'High', 'FreightMove'),
(7, 'Ferry', 100, 1.50, 25, 'Diesel', 'Available', 'Coastal', 'Moderate', 'SeaLink'),
(8, 'Helicopter', 6, 12.00, 150, 'Aviation Fuel', 'Unavailable', 'Remote', 'Very High', 'SkyLift'),
(9, 'Metro', 300, 0.80, 35, 'Electric', 'Available', 'Urban', 'Low', 'MetroTransit'),
(10, 'Scooter', 1, 0.20, 20, 'Electric', 'Available', 'Urban', 'None', 'ScootShare'),
(11, 'Taxi', 4, 1.50, 45, 'Gasoline', 'Available', 'Urban', 'High', 'QuickRide'),
(12, 'Tram', 100, 1.00, 30, 'Electric', 'Available', 'Urban', 'Low', 'CityTram'),
(13, 'Van', 8, 0.80, 55, 'Diesel', 'Available', 'Suburban', 'High', 'VanPool'),
(14, 'Cargo Ship', 1000, 0.05, 20, 'Heavy Fuel Oil', 'Available', 'International', 'Very High', 'GlobalFreight'),
(15, 'Motorbike', 2, 0.70, 70, 'Gasoline', 'Available', 'Rural', 'Moderate', 'MotoRide'),
(16, 'High-Speed Train', 400, 1.00, 200, 'Electric', 'Available', 'Interstate', 'Low', 'SpeedRail'),
(17, 'Electric Car', 4, 0.30, 60, 'Electric', 'Available', 'Urban', 'None', 'GreenDrive'),
(18, 'Hot Air Balloon', 6, 15.00, 10, 'Propane', 'Unavailable', 'Tourism', 'High', 'SkyAdventures'),
(19, 'Submarine', 50, 20.00, 25, 'Nuclear', 'Unavailable', 'Marine', 'Very High', 'DeepDive'),
(20, 'Kayak', 1, 0.00, 5, 'None', 'Available', 'Recreational', 'None', 'PaddleTime');

truncate table Transportation;

