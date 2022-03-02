-- SQL Challenge Queries

-- Number 1 - List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employee.emp_no, 
employee.last_name, 
employee.first_name, 
employee.sex,
salaries.salary
from employee
left join salaries 
on (employee.emp_no = salaries.emp_no);

-- Number 2 - List first name, last name, and hire date for employees who were hired in 1986.
-- https://stackoverflow.com/questions/36203613/how-to-extract-year-from-date-in-postgresql

select * from employee
where date_part('year', hire_date) = 1986;

-- Number 3 - List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- Dept_Manager (dept_no) to Departments (dept_name)
-- Dept_Manager (emp_no) to Employee (last name, first name)

select dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employee.last_name,
employee.first_name
from dept_manager
left join departments
on (dept_manager.dept_no = departments.dept_no)
left join employee
on (dept_manager.emp_no = employee.emp_no)

-- Number 4 - List the department of each employee with the following information: employee number, last name, first name, and department name.
-- Go from Employee to Dept_Emp to Departments

select employee.emp_no,
employee.last_name,
employee.first_name,
dept_emp.dept_no,
departments.dept_name
from employee
inner join dept_emp
on (employee.emp_no = dept_emp.emp_no)
inner join departments
on (departments.dept_no = dept_emp.dept_no)


-- Number 5 - List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- Look at SQL Day 2 where we searched for customers who reside in any city with a Z
-- select first_name, last_name from customer where address_id in	
	-- (select address_id from address where city_id in
		-- (select city_id from city where city like 'Z%'));

select first_name, last_name, sex from employee 
where first_name = 'Hercules' and last_name like 'B%'





-- Number 6 - List all employees in the Sales department, including their employee number, last name, first name, and department name.



-- Number 7 - List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.



-- Number 8 - In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
