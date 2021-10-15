--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from public."Employees" e
	inner join public."Salaries" s
	on e.emp_no = s.emp_no
	
	
--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from public."Employees" 
where extract(year from hire_date) = 1986


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from public."Department_Manager" dm
	inner join public."Departments" d
	on dm.dept_no = d.dept_no
	inner join public."Employees" e
	on dm.emp_no = e.emp_no

--alternate that does the same thing above but is nested
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from public."Employees" e
		inner join public."Department_Manager" dm
			inner join public."Departments" d
			on dm.dept_no = d.dept_no
		on dm.emp_no = e.emp_no
	
	
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from public."Employees" e
	inner join public."Department_Employee" de
			inner join public."Departments" d
			on de.dept_no = d.dept_no
		on de.emp_no = e.emp_no


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from public."Employees" e
where e.first_name = 'Hercules'
and e.last_name like 'B%'


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from public."Employees" e
	inner join public."Department_Employee" de
			inner join public."Departments" d
			on de.dept_no = d.dept_no
		on de.emp_no = e.emp_no
where d.dept_name = 'Sales'


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from public."Employees" e
	inner join public."Department_Employee" de
			inner join public."Departments" d
			on de.dept_no = d.dept_no
		on de.emp_no = e.emp_no
where d.dept_name in('Sales', 'Development')


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(e.last_name), e.last_name
from public."Employees" e
group by e.last_name
order by e.last_name desc


--Bonus

-- most common salary ranges for employees

--get the min and max to get the book ends for bins, the rest will get done in the notebook
select min(salary) from public."Salaries"
select max(salary) from public."Salaries"

--average salary by title

--determine querey to get the data for the notebook
select t.title, avg(s.salary::numeric)
from public."Employees" e
	inner join public."Titles" t
	on e.emp_title_id = t.title_id
	inner join public."Salaries" s
	on e.emp_no = s.emp_no
group by t.title


--Epilogue
select * from public."Employees" e where e.emp_no = 499942

