Select DISTINCT ON (emp_no) employee.emp_no, employee.first_name, employee.last_name, employee.birth_date, dept_emp.from_date, dept_emp.to_date, titles.title
From employee
inner join dept_emp on employee.emp_no = dept_emp.emp_no
inner join titles on employee.emp_no = titles.emp_no
WHERE (dept_emp.to_date = '9999-01-01') and (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
Order BY emp_no;
