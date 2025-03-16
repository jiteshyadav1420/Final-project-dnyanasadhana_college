/*
1. Apply All Query Languages DDL, DML, DQL
2. Write all possible queries using Operators, clauses, alias,  functions 
3. Cascades (ON DELETE CASCADE, ON UPDATE CASCADE)
4. Write neat and clean queries within proper single or multi-line comments.
*/


use dnyanasadhana_college;

-- Students table

-- Retrieve all students in the Computer Science department
SELECT * FROM Students WHERE Department_ID = 1;

-- Count the number of female students
SELECT COUNT(*) AS Female_Students FROM Students WHERE Gender = 'Female';

-- Update the email of a student with Student_ID = 5
UPDATE Students SET Email = 'new.email@example.com' WHERE Student_ID = 5;

-- Delete a student with Student_ID = 20
DELETE FROM Students WHERE Student_ID = 20;

-- Add a new column for student's middle name
ALTER TABLE Students 
ADD COLUMN Middle_Name VARCHAR(50);

-- Modify the data type of the Phone_Number column
ALTER TABLE Students MODIFY COLUMN Phone_Number VARCHAR(20);

-- Find students enrolled after 2021
SELECT * FROM Students WHERE Enrollment_Date > '2021-12-31';

-- departments table
-- Retrieve all departments with a budget greater than 300,000
SELECT * FROM Departments WHERE Budget > 300000;

-- Find the department with the highest budget
SELECT *FROM Departments 
ORDER BY Budget 
asc LIMIT 1;

-- Update the budget of the Physics department to 400,000
UPDATE Departments SET Budget = 400000 WHERE Department_Name = 'Physics';

-- Delete the department with Department_ID = 20
DELETE FROM Departments WHERE Department_ID = 20;

-- Add a new column for department ranking
ALTER TABLE Departments ADD COLUMN Department_Ranking INT;

-- Rename the 'Phone_Number' column to 'Contact_Number'
ALTER TABLE Departments CHANGE Phone_Number Contact_Number VARCHAR(15);

-- Count the number of departments in each building
SELECT Building_Name, COUNT(*) AS Total_Departments FROM Departments GROUP BY Building_Name;

-- 3. Professors Table

-- Retrieve all professors earning more than $90,000
SELECT * FROM Professors WHERE Salary > 90000;

-- Find the professor with the earliest hire date
SELECT * FROM Professors ORDER BY Hire_Date ASC LIMIT 1;

-- Increase the salary of all professors by 10%
UPDATE Professors SET Salary = Salary * 1.10;

-- Delete a professor with Professor_ID = 10
DELETE FROM Professors WHERE Professor_ID = 10;

-- Add a new column for professor's research area
ALTER TABLE Professors ADD COLUMN Research_Area VARCHAR(100);

-- Drop the 'Phone_Number' column
ALTER TABLE Professors DROP COLUMN Phone_Number;

-- Count the number of male and female professors
SELECT Gender, COUNT(*) AS Count FROM Professors GROUP BY Gender;

-- 4. Courses Table

-- Retrieve all courses with more than 3 credits
SELECT * FROM Courses WHERE Credits > 3;

-- Find the course with the highest enrollment limit
SELECT * FROM Courses ORDER BY Enrollment_Limit DESC LIMIT 1;

-- Update the room number for a course with Course_ID = 10
UPDATE Courses SET Room_Number = 'X999' WHERE Course_ID = 10;

-- Delete a course with Course_ID = 20
DELETE FROM Courses WHERE Course_ID = 20;

-- Add a new column for course level (Undergraduate, Graduate)
ALTER TABLE Courses ADD COLUMN Course_Level VARCHAR(20);

-- Rename the 'Room_Number' column to 'Classroom'
ALTER TABLE Courses CHANGE Room_Number Classroom VARCHAR(10);

-- Count the number of courses per semester
SELECT Semester, COUNT(*) AS Course_Count FROM Courses GROUP BY Semester;

-- 5. Classrooms Table

-- Retrieve all classrooms with a capacity greater than 40
SELECT * FROM Classrooms WHERE Capacity > 40;

-- Find the classroom with the highest capacity
SELECT * FROM Classrooms ORDER BY Capacity DESC LIMIT 1;

-- Update the capacity of a classroom with Room_ID = 1
UPDATE Classrooms SET Capacity = 45 WHERE Room_ID = 1;

-- Delete a classroom with Room_ID = 20
DELETE FROM Classrooms WHERE Room_ID = 20;

-- Add a new column for smart board availability
ALTER TABLE Classrooms ADD COLUMN Smart_Board_Availability ENUM('Y', 'N');

-- Rename the 'Floor_Number' column to 'Level'
ALTER TABLE Classrooms CHANGE Floor_Number Level INT;

-- Count the number of classrooms per building
SELECT Building_Name, COUNT(*) AS Classroom_Count FROM Classrooms GROUP BY Building_Name;

-- 6. Enrollments Table

-- Retrieve all enrollments with a grade of 'A'
SELECT * FROM Enrollments WHERE Grade = 'A';

-- Find the student with the highest final marks
SELECT * FROM Enrollments ORDER BY Final_Marks DESC LIMIT 1;

-- Update the grade to 'A' where final marks are 95 or more
UPDATE Enrollments SET Grade = 'A' WHERE Final_Marks >= 95;

-- Delete an enrollment with Enrollment_ID = 20
DELETE FROM Enrollments WHERE Enrollment_ID = 20;

-- Add a new column for course completion status
ALTER TABLE Enrollments ADD COLUMN Completion_Status ENUM('Completed', 'Ongoing', 'Dropped');

-- Rename the 'Grade' column to 'Final_Grade'
ALTER TABLE Enrollments CHANGE Grade Final_Grade VARCHAR(5);

-- Count the number of enrollments per semester
SELECT Semester, COUNT(*) AS Enrollments_Count FROM Enrollments GROUP BY Semester;

-- 7. Attendance Table

-- Retrieve all attendance records where the status is 'Absent'
SELECT * FROM Attendance WHERE Status = 'Absent';

-- Find the average class duration for all recorded sessions
SELECT AVG(Class_Duration) AS Average_Class_Duration FROM Attendance;

-- Update the reason for absence to 'Not Provided' where it is NULL
UPDATE Attendance SET Reason_Absent = 'Not Provided' WHERE Reason_Absent IS NULL;

-- Delete an attendance record with Attendance_ID = 20
DELETE FROM Attendance WHERE Attendance_ID = 20;

-- Add a new column for attendance percentage
ALTER TABLE Attendance ADD COLUMN Attendance_Percentage DECIMAL(5,2);

-- Rename the 'Recorded_By' column to 'Instructor_Name'
ALTER TABLE Attendance CHANGE Recorded_By Instructor_Name VARCHAR(50);

-- Count the number of absences per student
SELECT Student_ID, COUNT(*) AS Absence_Count FROM Attendance WHERE Status = 'Absent' GROUP BY Student_ID;

-- 8 Exams table

-- Retrieve all exams with a duration greater than 120 minutes
SELECT * FROM Exams WHERE Duration > 120;

-- Find the exam with the highest total marks
SELECT * FROM Exams ORDER BY Total_Marks DESC LIMIT 1;

-- Update the pass marks for an exam with Exam_ID = 5
UPDATE Exams SET Pass_Marks = 40 WHERE Exam_ID = 5;

-- Delete an exam with Exam_ID = 20
DELETE FROM Exams WHERE Exam_ID = 20;

-- Add a new column for exam difficulty level
ALTER TABLE Exams ADD COLUMN Difficulty_Level VARCHAR(20);

-- Rename the 'Remarks' column to 'Exam_Remarks'
ALTER TABLE Exams CHANGE Remarks Exam_Remarks VARCHAR(200);

-- Count the number of exams per course
SELECT Course_ID, COUNT(*) AS Exam_Count FROM Exams GROUP BY Course_ID;

-- 9. Results table

-- Retrieve all results where the grade is 'A+'
SELECT * FROM Results WHERE Grade = 'A+';

-- Find the student with the highest marks obtained
SELECT * FROM Results ORDER BY Marks_Obtained DESC LIMIT 1;

-- Update the grade to 'B+' for students with marks between 85 and 89
UPDATE Results SET Grade = 'B+' WHERE Marks_Obtained BETWEEN 85 AND 89;

-- Delete a result with Result_ID = 20
DELETE FROM Results WHERE Result_ID = 20;

-- Add a new column for result remarks
ALTER TABLE Results ADD COLUMN Result_Remarks VARCHAR(200);

-- Rename the 'Issue_Date' column to 'Result_Issue_Date'
ALTER TABLE Results CHANGE Issue_Date Result_Issue_Date DATE;

-- Count the number of results per exam
SELECT Exam_ID, COUNT(*) AS Result_Count FROM Results GROUP BY Exam_ID;

-- 10. staff table

-- Retrieve all staff members in the Computer Science department (Department_ID = 1)
SELECT * FROM Staff WHERE Department_ID = 1;

-- Find the staff member with the highest salary
SELECT * FROM Staff ORDER BY Salary DESC LIMIT 1;

-- Update the salary of a staff member with Staff_ID = 5
UPDATE Staff SET Salary = 80000 WHERE Staff_ID = 5;

-- Delete a staff member with Staff_ID = 20
DELETE FROM Staff WHERE Staff_ID = 20;

-- Add a new column for staff's years of experience
ALTER TABLE Staff ADD COLUMN Years_Of_Experience INT;

-- Rename the 'Position' column to 'Job_Title'
ALTER TABLE Staff CHANGE Position Job_Title VARCHAR(50);

-- Count the number of staff members per department
SELECT Department_ID, COUNT(*) AS Staff_Count FROM Staff GROUP BY Department_ID;

-- 11. Library Table

-- Retrieve all books with more than 5 copies available
SELECT * FROM Library WHERE Copies_Available > 5;

-- Find the book with the highest number of copies available
SELECT * FROM Library ORDER BY Copies_Available DESC LIMIT 1;

-- Update the number of copies available for a book with Book_ID = 10
UPDATE Library SET Copies_Available = 6 WHERE Book_ID = 10;

-- Delete a book with Book_ID = 20
DELETE FROM Library WHERE Book_ID = 20;

-- Add a new column for book condition
ALTER TABLE Library ADD COLUMN Book_Condition VARCHAR(50);

-- Rename the 'Shelf_Number' column to 'Shelf_Location'
ALTER TABLE Library CHANGE Shelf_Number Shelf_Location VARCHAR(10);

-- Count the number of books per genre
SELECT Genre, COUNT(*) AS Book_Count FROM Library GROUP BY Genre;

-- 12. Library_Issues Table

-- Retrieve all library issues where the status is 'Issued'
SELECT * FROM Library_Issues WHERE Status = 'Issued';

-- Find the student with the most library issues
SELECT Student_ID, COUNT(*) AS Issue_Count FROM Library_Issues GROUP BY Student_ID ORDER BY Issue_Count DESC LIMIT 1;

-- Update the fine amount for an issue with Issue_ID = 5
UPDATE Library_Issues SET Fine_Amount = 10.00 WHERE Issue_ID = 5;

-- Delete a library issue with Issue_ID = 20
DELETE FROM Library_Issues WHERE Issue_ID = 20;

-- Add a new column for issue remarks
ALTER TABLE Library_Issues ADD COLUMN Issue_Remarks VARCHAR(200);

-- Rename the 'Return_Date' column to 'Actual_Return_Date'
ALTER TABLE Library_Issues CHANGE Return_Date Actual_Return_Date DATE;

-- Count the number of issues per book
SELECT Book_ID, COUNT(*) AS Issue_Count FROM Library_Issues GROUP BY Book_ID;

-- 13.Timetables table

-- Retrieve all timetables for the Fall 2025 semester
SELECT * FROM Timetables WHERE Semester = 'Fall 2025';

-- Find the timetable with the earliest creation date
SELECT * FROM Timetables ORDER BY Creation_Date ASC LIMIT 1;

-- Update the room ID for a timetable with Timetable_ID = 5
UPDATE Timetables SET Room_ID = 10 WHERE Timetable_ID = 5;

-- Delete a timetable with Timetable_ID = 20
DELETE FROM Timetables WHERE Timetable_ID = 20;

-- Add a new column for timetable status
ALTER TABLE Timetables ADD COLUMN Timetable_Status VARCHAR(20);

-- Rename the 'Created_By' column to 'Created_By_Admin'
ALTER TABLE Timetables CHANGE Created_By Created_By_Admin VARCHAR(50);

-- Count the number of timetables per semester
SELECT Semester, COUNT(*) AS Timetable_Count FROM Timetables GROUP BY Semester;

-- 14. Clubs Table

-- Retrieve all clubs with more than 30 members
SELECT * FROM Clubs WHERE Number_Of_Members > 30;

-- Find the club with the highest number of members
SELECT * FROM Clubs ORDER BY Number_Of_Members DESC LIMIT 1;

-- Update the meeting schedule for a club with Club_ID = 5
UPDATE Clubs SET Meeting_Schedule = 'Tuesday, Thursday 4 PM' WHERE Club_ID = 5;

-- Delete a club with Club_ID = 20
DELETE FROM Clubs WHERE Club_ID = 20;

-- Add a new column for club type
ALTER TABLE Clubs ADD COLUMN Club_Type VARCHAR(50);

-- Rename the 'Contact_Number' column to 'Club_Contact_Number'
ALTER TABLE Clubs CHANGE Contact_Number Club_Contact_Number VARCHAR(15);

-- Count the number of clubs per advisor
SELECT Advisor_ID, COUNT(*) AS Club_Count FROM Clubs GROUP BY Advisor_ID;

-- 15. Club_Members Table

-- Retrieve all active club members
SELECT * FROM Club_Members WHERE Active_Member = TRUE;

-- Find the student with the most club memberships
SELECT Student_ID, COUNT(*) AS Membership_Count 
FROM Club_Members GROUP BY Student_ID 
ORDER BY Membership_Count 
DESC LIMIT 1;

-- Update the role of a club member with Membership_ID = 5
UPDATE Club_Members SET Role = 'Vice President' WHERE Membership_ID = 5;

-- Delete a club member with Membership_ID = 20
DELETE FROM Club_Members WHERE Membership_ID = 20;

-- Add a new column for membership duration
ALTER TABLE Club_Members ADD COLUMN Membership_Duration INT;

-- Rename the 'Feedback' column to 'Member_Feedback'
ALTER TABLE Club_Members CHANGE Feedback Member_Feedback VARCHAR(200);

-- Count the number of members per club
SELECT Club_ID, COUNT(*) AS Member_Count FROM Club_Members GROUP BY Club_ID;

-- 16. Events Table

-- Retrieve all events with a budget greater than $10,000
SELECT * FROM Events WHERE Budget > 10000;

-- Find the event with the highest feedback score
SELECT * FROM Events ORDER BY Feedback_Score DESC LIMIT 1;

-- Update the budget for an event with Event_ID = 5
UPDATE Events SET Budget = 12000 WHERE Event_ID = 5;

-- Delete an event with Event_ID = 20
DELETE FROM Events WHERE Event_ID = 20;

-- Add a new column for event location
ALTER TABLE Events ADD COLUMN Event_Location VARCHAR(100);

-- Rename the 'Sponsors' column to 'Event_Sponsors'
ALTER TABLE Events CHANGE Sponsors Event_Sponsors VARCHAR(200);

-- Count the number of events per organizer
SELECT Organizer_ID, COUNT(*) AS Event_Count FROM Events GROUP BY Organizer_ID;

-- 17. Scholarships Table

-- Retrieve all scholarships with an amount greater than $5,000
SELECT * FROM Scholarships WHERE Amount > 5000;

-- Find the scholarship with the highest amount
SELECT * FROM Scholarships ORDER BY Amount DESC LIMIT 1;

-- Update the application end date for a scholarship with Scholarship_ID = 5
UPDATE Scholarships SET Application_End_Date = '2025-05-15' WHERE Scholarship_ID = 5;

-- Delete a scholarship with Scholarship_ID = 20
DELETE FROM Scholarships WHERE Scholarship_ID = 20;

-- Add a new column for scholarship type
ALTER TABLE Scholarships ADD COLUMN Scholarship_Type VARCHAR(50);

-- Rename the 'Contact_Email' column to 'Scholarship_Contact_Email'
ALTER TABLE Scholarships CHANGE Contact_Email Scholarship_Contact_Email VARCHAR(100);

-- Count the number of scholarships per award count
SELECT Award_Count, COUNT(*) AS Scholarship_Count FROM Scholarships GROUP BY Award_Count;

-- 18. Hostel Table

-- Retrieve all hostels with a capacity greater than 200
SELECT * FROM Hostel WHERE Capacity > 200;

-- Find the hostel with the highest capacity
SELECT * FROM Hostel ORDER BY Capacity DESC LIMIT 1;

-- Update the warden ID for a hostel with Hostel_ID = 5
UPDATE Hostel SET Warden_ID = 10 WHERE Hostel_ID = 5;

-- Delete a hostel with Hostel_ID = 20
DELETE FROM Hostel WHERE Hostel_ID = 20;

-- Add a new column for hostel type
ALTER TABLE Hostel ADD COLUMN Hostel_Type VARCHAR(50);

-- Rename the 'Phone_Number' column to 'Hostel_Contact_Number'
ALTER TABLE Hostel CHANGE Phone_Number Hostel_Contact_Number VARCHAR(15);

-- Count the number of hostels per warden
SELECT Warden_ID, COUNT(*) AS Hostel_Count FROM Hostel GROUP BY Warden_ID;

-- 19. Sports Table

-- Retrieve all sports with more than 10 players
SELECT * FROM Sports WHERE Number_Of_Players > 10;

-- Find the sport with the highest number of players
SELECT * FROM Sports ORDER BY Number_Of_Players DESC LIMIT 1;

-- Update the training timings for a sport with Sport_ID = 5
UPDATE Sports SET Training_Timings = '6:00 PM - 8:00 PM' WHERE Sport_ID = 5;

-- Delete a sport with Sport_ID = 20
DELETE FROM Sports WHERE Sport_ID = 20;

-- Add a new column for sport category
ALTER TABLE Sports ADD COLUMN Sport_Category VARCHAR(50);

-- Rename the 'Contact_Number' column to 'Sport_Contact_Number'
ALTER TABLE Sports CHANGE Contact_Number Sport_Contact_Number VARCHAR(15);

-- Count the number of sports per coach
SELECT Coach_ID, COUNT(*) AS Sport_Count FROM Sports GROUP BY Coach_ID;

-- 20 placements table 

-- Retrieve all placements with a package greater than $1,000,000
SELECT * FROM Placements WHERE Package > 1000000;

-- Find the placement with the highest package
SELECT * FROM Placements ORDER BY Package DESC LIMIT 1;

-- Update the status of a placement with Placement_ID = 5
UPDATE Placements SET Status = 'Accepted' WHERE Placement_ID = 5;

-- Delete a placement with Placement_ID = 20
DELETE FROM Placements WHERE Placement_ID = 20;

-- Add a new column for placement type
ALTER TABLE Placements ADD COLUMN Placement_Type VARCHAR(50);

-- Rename the 'HR_Contact' column to 'Placement_HR_Contact'
ALTER TABLE Placements CHANGE HR_Contact  Placement_HR_Contact VARCHAR(100);

-- Count the number of placements per company
SELECT Company_Name, COUNT(*) AS Placement_Count FROM Placements GROUP BY Company_Name;

-- 21. Fees table 

-- Retrieve all fees with a payment status of 'Pending'
SELECT * FROM Fees WHERE Payment_Status = 'Pending';

-- Find the fee with the highest amount
SELECT * FROM Fees ORDER BY Fee_Amount DESC LIMIT 1;

-- Update the payment status for a fee with Fee_ID = 5
UPDATE Fees SET Payment_Status = 'Paid' WHERE Fee_ID = 5;

-- Delete a fee with Fee_ID = 20
DELETE FROM Fees WHERE Fee_ID = 20;

-- Add a new column for fee type
ALTER TABLE Fees ADD COLUMN Fee_Type VARCHAR(50);

-- Rename the 'Receipt_Number' column to 'Fee_Receipt_Number'
ALTER TABLE Fees CHANGE Receipt_Number Fee_Receipt_Number VARCHAR(50);

-- Count the number of fees per semester
SELECT Semester, COUNT(*) AS Fee_Count FROM Fees GROUP BY Semester;

-- 22 Alumni table 

-- Retrieve all alumni who graduated in 2020
SELECT * FROM Alumni WHERE Graduation_Year = 2020;

-- Find the alumni with the highest current job title
SELECT * FROM Alumni ORDER BY Current_Job_Title DESC LIMIT 1;

-- Update the email of an alumni with Alumni_ID = 5
UPDATE Alumni SET Email = 'new.email@example.com' WHERE Alumni_ID = 5;

-- Delete an alumni with Alumni_ID = 20
DELETE FROM Alumni WHERE Alumni_ID = 20;

-- Add a new column for alumni's LinkedIn profile
ALTER TABLE Alumni ADD COLUMN LinkedIn_Profile VARCHAR(200);

-- Rename the 'Remarks' column to 'Alumni_Remarks'
ALTER TABLE Alumni CHANGE Remarks Alumni_Remarks VARCHAR(200);

-- Count the number of alumni per graduation year
SELECT Graduation_Year, COUNT(*) AS Alumni_Count FROM Alumni GROUP BY Graduation_Year;

-- 23 table Cafeteria 

-- Retrieve all cafeterias with a feedback rating greater than 4.5
SELECT * FROM Cafeteria WHERE Feedback_Rating > 4.5;

-- Find the cafeteria with the highest seating capacity
SELECT * FROM Cafeteria ORDER BY Seating_Capacity DESC LIMIT 1;

-- Update the feedback rating for a cafeteria with Cafeteria_ID = 5
UPDATE Cafeteria SET Feedback_Rating = 4.8 WHERE Cafeteria_ID = 5;

-- Delete a cafeteria with Cafeteria_ID = 20
DELETE FROM Cafeteria WHERE Cafeteria_ID = 20;

-- Add a new column for cafeteria type
ALTER TABLE Cafeteria ADD COLUMN Cafeteria_Type VARCHAR(50);

-- Rename the 'Contact_Number' column to 'Cafeteria_Contact_Number'
ALTER TABLE Cafeteria CHANGE Contact_Number Cafeteria_Contact_Number VARCHAR(15);

-- Count the number of cafeterias per location
SELECT Location, COUNT(*) AS Cafeteria_Count FROM Cafeteria GROUP BY Location;

-- Table 24 Transportation

-- Retrieve all transportation modes with a capacity greater than 100
SELECT * FROM Transportation WHERE Capacity > 100;

-- Find the transportation mode with the highest speed
SELECT * FROM Transportation ORDER BY Speed_mph DESC LIMIT 1;

-- Update the cost per mile for a transportation mode with ID = 5
UPDATE Transportation SET Cost_per_Mile = 1.50 WHERE ID = 5;

-- Delete a transportation mode with ID = 20
DELETE FROM Transportation WHERE ID = 20;

-- Add a new column for transportation type
ALTER TABLE Transportation ADD COLUMN Transportation_Type VARCHAR(50);

-- Rename the 'Fuel_Type' column to 'Energy_Source'
ALTER TABLE Transportation CHANGE Fuel_Type Energy_Source VARCHAR(50);

-- Count the number of transportation modes per region
SELECT Region, COUNT(*) AS Transportation_Count FROM Transportation GROUP BY Region;
