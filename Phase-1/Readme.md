# Project Phase 1: Database Design and Implementation

## Overview
This project involves the design and implementation of a comprehensive database system for **Dnyanasadhana College**. The database is designed to manage various aspects of the college, including student information, departments, professors, courses, classrooms, enrollments, attendance, exams, results, staff, library, clubs, events, scholarships, hostels, sports, placements, fees, alumni, cafeteria, and transportation.

The database is built using **SQL** and consists of **25 tables**, each with at least **10 attributes** and populated with **20 records**. The database is designed to handle various college operations efficiently, ensuring data integrity and ease of access.

---

## Database Schema

### Tables
1. **Students**: Stores information about students, including personal details, enrollment date, and department.
2. **Departments**: Contains details about college departments, including budget, head of department, and faculty count.
3. **Professors**: Stores information about professors, including their department, hire date, and salary.
4. **Courses**: Contains details about courses offered, including credits, semester, and enrollment limit.
5. **Classrooms**: Stores information about classrooms, including capacity, equipment, and availability of amenities.
6. **Enrollments**: Tracks student enrollments in courses, including grades and attendance.
7. **Attendance**: Records student attendance for each course.
8. **Exams**: Stores details about exams, including exam type, date, and total marks.
9. **Results**: Tracks student results for exams, including marks obtained and grades.
10. **Staff**: Contains information about college staff, including their position, salary, and department.
11. **Library**: Stores details about books available in the library, including copies available and shelf number.
12. **Library_Issues**: Tracks book issues to students, including due dates and fine amounts.
13. **Timetables**: Contains course schedules, including day, time, and room.
14. **Clubs**: Stores information about college clubs, including advisor and president details.
15. **Club_Members**: Tracks student membership in clubs, including roles and activity dates.
16. **Events**: Contains details about college events, including date, venue, and budget.
17. **Scholarships**: Stores information about scholarships, including eligibility criteria and award dates.
18. **Hostel**: Contains details about college hostels, including capacity and amenities.
19. **Sports**: Stores information about sports activities, including coach and training timings.
20. **Placements**: Tracks student placements, including company name, job role, and package.
21. **Fees**: Records student fee payments, including due dates and payment status.
22. **Alumni**: Stores information about college alumni, including their current job and company.
23. **Cafeteria**: Contains details about college cafeterias, including menu type and seating capacity.
24. **Transportation**: Stores information about transportation options available to students and staff.
25. **Results**: Tracks student results for exams, including marks obtained and grades.

---

## Key Features

- **Data Integrity**: The database uses primary keys, foreign keys, and constraints to ensure data integrity.
- **Scalability**: The database is designed to handle a large number of records and can be easily extended.
- **Ease of Access**: The database is normalized to ensure efficient querying and data retrieval.
- **Comprehensive Coverage**: The database covers all major aspects of college operations, from academics to extracurricular activities.

---

## SQL Queries

The project includes various SQL queries to interact with the database, such as:

- **Creating Tables**: Each table is created with appropriate attributes, data types, and constraints.
- **Inserting Records**: Each table is populated with at least 20 records to simulate real-world data.
- **Querying Data**: Example queries are provided to retrieve data from the database, such as finding students enrolled in a specific course or professors in a particular department.
- **Updating and Deleting Records**: Queries are provided to update or delete records as needed.

---

## How to Use

1. **Database Creation**: 
   - Create the database using the following SQL command:
     ```sql
     CREATE DATABASE dnyanasadhana_college;
     ```
   - Use the database:
     ```sql
     USE dnyanasadhana_college;
     ```

2. **Table Creation**:
   - Each table is created using the `CREATE TABLE` command. For example:
     ```sql
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
     ```

3. **Inserting Records**:
   - Records are inserted using the `INSERT INTO` command. For example:
     ```sql
     INSERT INTO Students (Student_ID, First_Name, Last_Name, DOB, Gender, Address, Phone_Number, Email, Enrollment_Date, Department_ID) 
     VALUES (1, 'Alice', 'Johnson', '2001-03-15', 'Female', '123 Maple St', '1234567890', 'alice.johnson@example.com', '2021-09-01', 1);
     ```

4. **Querying Data**:
   - Example query to retrieve all students in the Computer Science department:
     ```sql
     SELECT * FROM Students WHERE Department_ID = 1;
     ```

---

## Future Enhancements

- **User Interface**: Develop a user-friendly interface to interact with the database.
- **Advanced Queries**: Implement more complex queries for advanced data analysis.
- **Data Security**: Implement security measures to protect sensitive data.
- **Integration**: Integrate the database with other college systems, such as attendance tracking and fee management.

---

## Conclusion

This project provides a robust and scalable database solution for managing college operations. It is designed to handle a wide range of data and can be easily extended to meet future requirements. The database is a crucial component of the college's information system, ensuring efficient data management and retrieval.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
