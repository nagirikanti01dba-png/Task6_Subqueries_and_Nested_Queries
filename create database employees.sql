create database employees;


CREATE TABLE employee_1 (
    emp_id INT PRIMARY KEY,
    Name NVARCHAR(50),
    dept_id INT,
    salary INT
);


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name NVARCHAR(50),
    location NVARCHAR(50)
);


INSERT INTO employee_1 VALUES
(1, 'venky', 10, 70000),
(2, 'vijay', 10, 60000),
(3, 'ram', 20, 80000),
(4, 'Dev', 30, 50000);


INSERT INTO departments VALUES
(10, 'HR', 'London'),
(20, 'IT', 'New York'),
(30, 'Finance', 'London');