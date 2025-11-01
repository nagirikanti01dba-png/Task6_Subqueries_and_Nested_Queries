SELECT 
    e.name,
    e.salary,
    (SELECT d.dept_name 
     FROM departments d 
     WHERE d.dept_id = e.dept_id) AS department
FROM employees e;



SELECT name, salary
FROM employee_1
WHERE salary = (SELECT MAX(salary) FROM employee_1);

SELECT name
FROM employee_1
WHERE dept_id IN (
    SELECT dept_id
    FROM departments
    WHERE location = 'London'
);


SELECT e.name
FROM employee_1 e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.dept_id = e.dept_id
      AND d.dept_name = 'HR'
);


SELECT 
    d.dept_name,
    avg_data.avg_salary
FROM departments d
JOIN (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employee_1
    GROUP BY dept_id
) AS avg_data
ON d.dept_id = avg_data.dept_id;


SELECT name, salary, dept_id
FROM employee_1 e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);