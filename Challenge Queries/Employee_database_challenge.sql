---deliverable 1 
SELECT e.emp_no, e.first_name,e.last_name,ti.title, ti.from_date, ti.to_date
Into Retirement_titles
FROM employees as e
Inner Join titles as ti
ON (e.emp_no= ti.emp_no)
Where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

Select * from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,first_name,
Last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE (to_date= '9999-01-01')
ORDER BY emp_no ASC,to_date DESC;

--retrieve the number of employees by their most recent job title who are about to retire.
Select Count(title), title
INTO Retiring_titles
From unique_titles
group by title
order by count(title) DESC

