# use join_test_db;
#
#
# CREATE TABLE roles(
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(100) NOT NULL,
#     PRIMARY KEY (id)
# );
#
# CREATE TABLE users(
#     ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(100) NOT NULL,
#     email VARCHAR(100) NOT NULL,
#     role_id INT UNSIGNED DEFAULT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles(name)
# VALUES ('admin');
# INSERT INTO roles(name)
# VALUES ('author');
# INSERT INTO roles (name)
# VALUES ('reviewer');
# INSERT INTO roles(name)
# VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id)
# VALUES ('bob', 'bob@example.com', 2),
#        ('joe', 'joe@example.com', 2),
#        ('sally', 'sally@example.com', 2),
#        ('jane', 'jane@example.com', null);
#
# SELECT r.name, COUNT(*) as users
# FROM users as u
#          JOIN roles as r
#               ON u.role_id = r.id
# GROUP BY r.id;

use employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, '', e.last_name) AS 'Department Manager'
FROM employees AS e
    JOIN dept_manager AS m
        ON m.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
ORDER BY d.dept_name;

# 3. Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, '', e.last_name) AS 'Manager Name'
FROM employees AS e
    JOIN dept_manager AS m
        on m.emp_no = e.emp_no
    JOIN departments as d
        on  d.dept_no = m.dept_no
WHERE m.to_date > NOW()
    and e.gender = 'F'
ORDER BY d.dept_name;

# 4.  Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS "Title", COUNT(*) AS "Count"
FROM departments AS d
         JOIN dept_emp AS de
              ON de.dept_no = d.dept_no
         JOIN titles AS t
              ON t.emp_no = de.emp_no
WHERE de.to_date > NOW()
  AND t.to_date > NOW()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;
# ORDER BY t.title;

# 5. Find the current salary of all current managers.


SELECT d.dept_name as 'Department Name',
       CONCAT(e.first_name,  '' , e.last_name) AS 'Name',
       s.salary as 'Salary'
       from employees e
       join salaries s on e.emp_no = s.emp_no
       join dept_manager dm on e.emp_no = dm.emp_no
        join departments d on d.dept_no = dm.dept_no
        where dm.to_date>now()
        AND s.to_date > now()
order by d.dept_name;

select concat(e.first_name, ' ', e.last_name) AS 'Employee Name',
       d.dept_name AS 'Department Name',
       concat(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees e
         join dept_emp de on e.emp_no = de.emp_no
         join departments d on de.dept_no = d.dept_no
         join dept_manager dm on de.dept_no = dm.dept_no
         join employees m on dm.emp_no = m.emp_no
WHERE de.to_date > now()
  AND dm.to_date > now()
order by d.dept_name;







