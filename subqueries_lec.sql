USE employees;

SELECT first_name, last_name, birth_date
FROM employees.employees
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees.dept_manager
        WHERE to_date > NOW()
        );


SELECT e.first_name, e.last_name, e.birth_date
FROM employees as e
RIGHT JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE dm.to_date> NOW();


SELECT first_name, last_name, birth_date
FROM employees.employees
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees.dept_manager
        WHERE to_date > NOW() and dept_no IN(
            SELECT dept_no
            FROM departments
            Where dept_name = 'Production'
        )
        );

SELECT e.first_name, e.last_name, e.birth_date
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
WHERE dm.to_date > NOW() and d.dept_name = 'Production';


