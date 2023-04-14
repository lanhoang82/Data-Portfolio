/* 1. Basic SELECT statement*/

/*Retrieve all the names (first_name, last_name) of employees using an alias name "First Name", "Last Name"*/
SELECT first_name "First Name", last_name "Last Name" FROM employees;

/*Get unique department ID from employee table */
SELECT DISTINCT department_id FROM employees;

/*Get the details of all employees from the employee table in descending order by their first name*/
SELECT * FROM employees 
ORDER BY first_name DESC;

/*get the employee ID, names (first_name, last_name) and salary in ascending order according to their salary*/
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary ASC;

/*get the maximum and minimum salary paid to the a particular employee*/
SELECT min_salary, max_salary FROM jobs
INNER JOIN employees ON jobs.job_id = employees.job_id 
WHERE employee_id = 180;

/*get the number of employees working with the company*/
SELECT COUNT(DISTINCT employee_id) FROM employees;

/* 2. JOIN statement*/

/* make a join with employees and departments table to find the name of the employee, 
including first_name and last name, department ID and name of departments*/
SELECT first_name, last_name, employees.department_id, department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

/*make a join with 4 tables employees, jobs departments and locations to find the name, 
including first_name and last_name, jobs, salary, department name and ID, of the employees working 
in Munich*/
SELECT first_name, last_name, job_title, department_name, city, salary, departments.department_id
FROM employees
INNER JOIN jobs ON employees.job_id = jobs.job_id
INNER JOIN departments ON departments.department_id = employees.department_id
INNER JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city = 'Munich';

/* make a join with 3 tables employees, departments and locations to get the department name, 
number of employees working in each department, as well as number of locations that department
has representation in.*/
SELECT department_name "Department Name", COUNT(employee_id) "Number of Employees", COUNT(DISTINCT locations.location_id) "Number of Locations"
FROM departments 
INNER JOIN employees ON departments.department_id = employees.department_id 
INNER JOIN locations ON locations.location_id = departments.location_id
GROUP BY department_name
ORDER BY "Number of Employees" DESC;

/* 3. Sub-queries*/
/**/


/**/
/**/
/**/