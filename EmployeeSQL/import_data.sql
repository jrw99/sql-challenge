--Ensure the account postgres is running as had read permissions for the location these files reside at

--command " "\\
copy public."Titles" (title_id, title) FROM '../data/titles.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Employees" (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) FROM '../data/EMPLOY~1.CSV' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Salaries" (emp_no, salary) FROM '../data/salaries.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Departments" (dept_no, dept_name) FROM '../data/departments.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Department_Employee" (emp_no, dept_no) FROM '../data/dept_emp.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Department_Manager" (dept_no, emp_no) FROM '../data/dept_manager.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';