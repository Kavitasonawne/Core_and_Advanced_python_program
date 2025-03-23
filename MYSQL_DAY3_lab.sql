Consider a simple database with one tables: Employee

 Employee Table: ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

 Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.

 Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.

 Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25



mysql> CREATE DATABASE emp_name;
Query OK, 1 row affected (0.03 sec)

mysql> use emp_name;
Database changed
mysql> CREATE TABLE emp_name (emp_id INT PRIMARY KEY,first_name VARCHAR(50),last_name VARCHAR(50),age INT,email VARCHAR(100));
Query OK, 0 rows affected (0.07 sec)

#Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

mysql> INSERT INTO  emp_name(emp_id, first_name, last_name, age, email)VALUES
    -> (1, 'John', 'Doe', 30, 'john.doe@example.com');
Query OK, 1 row affected (0.02 sec)

#Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.

mysql> SELECT first_name, last_name
    -> FROM emp_name;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
+------------+-----------+
1 row in set (0.01 sec)

#Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 year

mysql> SELECT first_name, last_name, age
    -> FROM emp_name
    -> WHERE age > 30;
Empty set (0.01 sec)

#Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25
mysql> UPDATE emp_name
    -> SET age = age + 1
    -> WHERE age > 25;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0


