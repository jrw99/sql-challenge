--command " "\\
copy public."Titles" (title_id, title) FROM 'C:/Users/Jon/DOCUME~1/BOOTCAMP/SQL-CH~1/data/titles.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Employees" (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date) FROM 'C:/Users/Jon/DOCUME~1/BOOTCAMP/SQL-CH~1/data/EMPLOY~1.CSV' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Salaries" (emp_no, salary) FROM 'C:/Users/Jon/DOCUME~1/BOOTCAMP/SQL-CH~1/data/salaries.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Departments" (dept_no, dept_name) FROM 'C:/Users/Jon/DOCUME~1/BOOTCAMP/SQL-CH~1/data/DEPART~1.CSV' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Department_Employee" (emp_no, dept_no) FROM 'C:/Users/Jon/DOCUME~1/BOOTCAMP/SQL-CH~1/data/dept_emp.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';

--command " "\\
copy public."Department_Manager" (dept_no, emp_no) FROM 'C:/Users/Jon/DOCUME~1/BOOTCAMP/SQL-CH~1/data/DEPT_M~1.CSV' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';