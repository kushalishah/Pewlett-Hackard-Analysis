-- Module 7 Challenge
-- Deliverable 1: The Number of Retiring Employees by Title

--  List of current employees born between Jan. 1, 1952 and Dec. 31, 1955
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	titles.title,
	titles.from_date,
	s.salary
INTO retiring_employees
FROM employees as e
INNER JOIN titles 
	ON (e.emp_no = titles.emp_no)
INNER JOIN salaries as s 
	ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
		AND (de.to_date = '9999-01-01')
ORDER BY 
	e.first_name ASC,
	e.last_name ASC;

    