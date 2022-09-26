
--Data analysis 1
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries
on salaries.emp_no = employees.emp_no;

--Data analysis 2
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

--Data analysis 3 
select dept_manager.emp_no, dept_manager.dept_no, departments.dept_no, employees.first_name, employees.last_name
from dept_manager
join departments
on dept_manager.dept_no = departments.dept_no
join employees
on  dept_manager.emp_no = employees.emp_no 

-- Data analysis 4
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.dept_no
from dept_emp
join employees 
on employees.emp_no = dept_emp.emp_no
join departments
on departments.dept_no = dept_emp.dept_no

-- Data analysis 5

select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name='Hercules' and
employees.last_name like 'B%'


-- Data analysis 6
select employees.emp_no, employees.first_name, employees.last_name, dept_emp.emp_no,  departments.dept_name
from dept_emp
join departments
on dept_emp.dept_no = departments.dept_no
join employees
on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales'

--Data analysis 7
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, departments.dept_name
from dept_emp
join departments
on dept_emp.dept_no = departments.dept_no
join employees
on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales' or departments.dept_name=  'Development'

--Data analysis 8
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc





	

