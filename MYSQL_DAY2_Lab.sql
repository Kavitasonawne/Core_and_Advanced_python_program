# Create a database with the name StudentManagementSystem.
mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.06 sec)

mysql> USE StudentManagementSystem;
Database changed

#Create a table with named Student with attributes:
 ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone 

mysql> CREATE TABLE Student ( StudentID INT AUTO_INCREMENT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), DateOfBirth DATE,Gender VARCHAR(10), Email VARCHAR(100), Phone VARCHAR(15));
Query OK, 0 rows affected (0.13 sec)

mysql> desc Student;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| StudentID   | int          | NO   | PRI | NULL    | auto_increment |
| FirstName   | varchar(50)  | YES  |     | NULL    |                |
| LastName    | varchar(50)  | YES  |     | NULL    |                |
| DateOfBirth | date         | YES  |     | NULL    |                |
| Gender      | varchar(10)  | YES  |     | NULL    |                |
| Email       | varchar(100) | YES  |     | NULL    |                |
| Phone       | varchar(15)  | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
7 rows in set (0.06 sec)
#Insert Records into Student

mysql> INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
    -> ('John', 'Doe', '2000-01-15', 'Male', 'john.doe@email.com', '123-456-7890'),
    -> ('Jane', 'Smith', '1999-02-20', 'Female', 'jane.smith@email.com', '234-567-8901'),
    -> ('Alex', 'Johnson', '2001-03-25', 'Male', 'alex.johnson@email.com', '345-678-9012'),
    -> ('Emily', 'Brown', '1998-04-30', 'Female', 'emily.brown@email.com', '456-789-0123'),
    -> ('Michael', 'Davis', '2000-05-05', 'Male', 'michael.davis@email.com', '567-890-1234');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0
 
#Retrieve data from Student table

mysql> SELECT * FROM Student;
+-----------+-----------+----------+-------------+--------+-------------------------+--------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                   | Phone        |
+-----------+-----------+----------+-------------+--------+-------------------------+--------------+
|         1 | John      | Doe      | 2000-01-15  | Male   | john.doe@email.com      | 123-456-7890 |
|         2 | Jane      | Smith    | 1999-02-20  | Female | jane.smith@email.com    | 234-567-8901 |
|         3 | Alex      | Johnson  | 2001-03-25  | Male   | alex.johnson@email.com  | 345-678-9012 |
|         4 | Emily     | Brown    | 1998-04-30  | Female | emily.brown@email.com   | 456-789-0123 |
|         5 | Michael   | Davis    | 2000-05-05  | Male   | michael.davis@email.com | 567-890-1234 |
+-----------+-----------+----------+-------------+--------+-------------------------+--------------+
5 rows in set (0.01 sec)


 #Create a table with name Course with attributes:
 ● CourseID (Primary Key) ● CourseTitle ● Credits

mysql> CREATE TABLE Course (CourseID INT AUTO_INCREMENT PRIMARY KEY,CourseTitle VARCHAR(100),Credits INT);
Query OK, 0 rows affected (0.04 sec)

mysql> desc course;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| CourseID    | int          | NO   | PRI | NULL    | auto_increment |
| CourseTitle | varchar(100) | YES  |     | NULL    |                |
| Credits     | int          | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)
#Insert Records into Course

mysql> INSERT INTO Course (CourseTitle, Credits) VALUES
    -> ('Mathematics 101', 3),
    -> ('Physics 101', 4),
    -> ('Computer Science 101', 3),
    -> ('Biology 101', 3),
    -> ('Chemistry 101', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0
# Retrieve data from Course table
mysql> SELECT * FROM Course;
+----------+----------------------+---------+
| CourseID | CourseTitle          | Credits |
+----------+----------------------+---------+
|        1 | Mathematics 101      |       3 |
|        2 | Physics 101          |       4 |
|        3 | Computer Science 101 |       3 |
|        4 | Biology 101          |       3 |
|        5 | Chemistry 101        |       3 |
+----------+----------------------+---------+
5 rows in set (0.00 sec)

# Create a table with named Instructor with attributes: 
● InstructorID (Primary Key) ● FirstName ● LastName ● Email 

mysql> CREATE TABLE Instructor (InstructorID INT AUTO_INCREMENT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50), Email VARCHAR(100));
Query OK, 0 rows affected (0.03 sec)

mysql> desc Instructor;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| InstructorID | int          | NO   | PRI | NULL    | auto_increment |
| FirstName    | varchar(50)  | YES  |     | NULL    |                |
| LastName     | varchar(50)  | YES  |     | NULL    |                |
| Email        | varchar(100) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)
#Insert Records into Instructor
mysql> INSERT INTO Instructor (FirstName, LastName, Email) VALUES
    -> ('Dr. Alan', 'Turing', 'alan.turing@email.com'),
    -> ('Dr. Marie', 'Curie', 'marie.curie@email.com'),
    -> ('Dr. Ada', 'Lovelace', 'ada.lovelace@email.com'),
    -> ('Dr. Isaac', 'Newton', 'isaac.newton@email.com'),
    -> ('Dr. Albert', 'Einstein', 'albert.einstein@email.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

# Retrieve data from Instructor table

mysql> SELECT * FROM Instructor;
+--------------+------------+----------+---------------------------+
| InstructorID | FirstName  | LastName | Email                     |
+--------------+------------+----------+---------------------------+
|            1 | Dr. Alan   | Turing   | alan.turing@email.com     |
|            2 | Dr. Marie  | Curie    | marie.curie@email.com     |
|            3 | Dr. Ada    | Lovelace | ada.lovelace@email.com    |
|            4 | Dr. Isaac  | Newton   | isaac.newton@email.com    |
|            5 | Dr. Albert | Einstein | albert.einstein@email.com |
+--------------+------------+----------+---------------------------+
5 rows in set (0.00 sec)

 #Create a table with named Enrollment with attributes: 
● EnrollmentID (Primary Key) ● EnrollmentDate ● StudentID(Foreign key) ● CourseID(Foreign Key) ● InstructorID(Foreign key) 

mysql> CREATE TABLE Enrollment ( EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,   EnrollmentDate DATE,  StudentID INT,  CourseID INT,  InstructorID INT,   FOREIGN KEY (StudentID) REFERENCES Student(StudentID),FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID));
Query OK, 0 rows affected (0.12 sec)

mysql> desc Enrollment;
+----------------+------+------+-----+---------+----------------+
| Field          | Type | Null | Key | Default | Extra          |
+----------------+------+------+-----+---------+----------------+
| EnrollmentID   | int  | NO   | PRI | NULL    | auto_increment |
| EnrollmentDate | date | YES  |     | NULL    |                |
| StudentID      | int  | YES  | MUL | NULL    |                |
| CourseID       | int  | YES  | MUL | NULL    |                |
| InstructorID   | int  | YES  | MUL | NULL    |                |
+----------------+------+------+-----+---------+----------------+
5 rows in set (0.01 sec)
#Insert Records into Enrollment

mysql> INSERT INTO Enrollment (EnrollmentDate, StudentID, CourseID, InstructorID) VALUES
    -> ('2025-01-01', 1, 1, 1),
    -> ('2025-01-02', 2, 2, 2),
    -> ('2025-01-03', 3, 3, 3),
    -> ('2025-01-04', 4, 4, 4),
    -> ('2025-01-05', 5, 5, 5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#Retrieve data from Enrollment table

mysql> SELECT * FROM Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
|            1 | 2025-01-01     |         1 |        1 |            1 |
|            2 | 2025-01-02     |         2 |        2 |            2 |
|            3 | 2025-01-03     |         3 |        3 |            3 |
|            4 | 2025-01-04     |         4 |        4 |            4 |
|            5 | 2025-01-05     |         5 |        5 |            5 |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

 #Create a table with named Score with attributes: 
● ScoreID (Primary Key) ● CourseID (Foreign key) ● StudentID (Foreign Key) ● DateOfExam ● CreditObtained 

mysql> CREATE TABLE Score (ScoreID INT AUTO_INCREMENT PRIMARY KEY,CourseID INT, StudentID INT, DateOfExam DATE, CreditObtained DECIMAL(5, 2), FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc Score;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| ScoreID        | int          | NO   | PRI | NULL    | auto_increment |
| CourseID       | int          | YES  | MUL | NULL    |                |
| StudentID      | int          | YES  | MUL | NULL    |                |
| DateOfExam     | date         | YES  |     | NULL    |                |
| CreditObtained | decimal(5,2) | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)
 #Insert Records into Score
mysql> INSERT INTO Score (CourseID, StudentID, DateOfExam, CreditObtained) VALUES
    -> (1, 1, '2025-05-01', 3.0),
    -> (2, 2, '2025-05-02', 4.0),
    -> (3, 3, '2025-05-03', 3.5),
    -> (4, 4, '2025-05-04', 3.0),
    -> (5, 5, '2025-05-05', 2.5);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#Retrieve data from Score table

mysql> SELECT * FROM Score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 |        1 |         1 | 2025-05-01 |           3.00 |
|       2 |        2 |         2 | 2025-05-02 |           4.00 |
|       3 |        3 |         3 | 2025-05-03 |           3.50 |
|       4 |        4 |         4 | 2025-05-04 |           3.00 |
|       5 |        5 |         5 | 2025-05-05 |           2.50 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

#Create a table with named Feedback with attributes:
● FeedbackID (Primary Key) ● StudentID (Foreign key) ● Date ● InstructorName ● Feedback


mysql> CREATE TABLE Feedback (FeedbackID INT AUTO_INCREMENT PRIMARY KEY, StudentID INT,Date DATE,InstructorName VARCHAR(100), Feedback TEXT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc Feedback;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| FeedbackID     | int          | NO   | PRI | NULL    | auto_increment |
| StudentID      | int          | YES  | MUL | NULL    |                |
| Date           | date         | YES  |     | NULL    |                |
| InstructorName | varchar(100) | YES  |     | NULL    |                |
| Feedback       | text         | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)
#Insert Records into Feedback
mysql> INSERT INTO Feedback (StudentID, Date, InstructorName, Feedback) VALUES
    -> (1, '2025-05-06', 'Dr. Alan Turing', 'Great course, very informative!'),
    -> (2, '2025-05-07', 'Dr. Marie Curie', 'Well structured and engaging content.'),
    -> (3, '2025-05-08', 'Dr. Ada Lovelace', 'Interesting material, needs more practical examples.'),
    -> (4, '2025-05-09', 'Dr. Isaac Newton', 'The lectures were clear and helpful.'),
    -> (5, '2025-05-10', 'Dr. Albert Einstein', 'Challenging but rewarding course!');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

#Retrieve data from Feedback table

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+---------------------+------------------------------------------------------+
| FeedbackID | StudentID | Date       | InstructorName      | Feedback
                 |
+------------+-----------+------------+---------------------+------------------------------------------------------+
|          1 |         1 | 2025-05-06 | Dr. Alan Turing     | Great course, very informative!                      |
|          2 |         2 | 2025-05-07 | Dr. Marie Curie     | Well structured and engaging content.                |
|          3 |         3 | 2025-05-08 | Dr. Ada Lovelace    | Interesting material, needs more practical examples. |
|          4 |         4 | 2025-05-09 | Dr. Isaac Newton    | The lectures were clear and helpful.                 |
|          5 |         5 | 2025-05-10 | Dr. Albert Einstein | Challenging but rewarding course!                    |
+------------+-----------+------------+---------------------+------------------------------------------------------+
5 rows in set (0.00 sec)

mysql>



















