use newschema;

CREATE TABLE employees(
employee_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
age int,
department_id INT,
salary INT,
job_title varchar(20),
PRIMARY KEY(employee_id)
);


INSERT INTO employees
VALUES (101,'John','Doe',28,1,55000,'Software Engineer'),
		(102,'Jane','Smith',34,2,68000,'Data Analyst'),
        (103,'Alice','Johnson',45,3,75000,'Project Manager'),
        (104,'Bob','Brown',25,1,48000,'Junior Developer'),
        (105,'Charlie','Davis',29,2,59000,'QA Engineer'),
        (106,'Eve','Miller',31,3,65000,'Senior Developer'),
        (107,'Frank','Wilson',38,1,70000,'Software Engineer'),
        (108,'Grace','Taylor',26,2,54000,'Data Scientist'),
        (109,'Hannah','Moore',42,3,80000,'Director'),
        (110,'Jack','Lee',33,1,60000,'Devops Engineer');
        

CREATE TABLE departments(
department_id INT auto_increment,
department_name VARCHAR(20),
location VARCHAR(20),
primary key(department_id)
);


-- Exercise 1: Basic SELECT Query
-- Write a query to retrieve all columns from the employees table

SELECT * FROM employees;

-- EXERCISE 2: Exercise 2: Filtering Data
-- Write a query to retrieve all employees with a salary greater than 60,000.

SELECT * FROM employees
WHERE salary > 60000;


-- Exercise 3: Using WHERE with Multiple Conditions
-- Write a query to find all employees who are between the ages of 25 and 35 and have the job title 'Software Engineer'.
SELECT employees.first_name,employees.job_title
FROM employees
WHERE age BETWEEN 25 AND 35
AND job_title = 'Software Engineer';

-- Exercise 4: Write a query to retrieve all employees, sorted by their salary in descending order.

SELECT employees.first_name,employees.salary
FROM employees
order by employees.salary DESC,first_name ASC;

-- Exercise 5: Aggregating Data with COUNT
# Write a query to count how many employees are in each department.

SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

