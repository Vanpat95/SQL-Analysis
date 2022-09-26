--creating tables
drop table employees
--fixing 
create table employees (
	emp_no int primary key NOT NULL,
	emp_title_id varchar (30),
	birth_date varchar(30),
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(30),
	hire_date date
	
);

create table departments (
	dept_name varchar(30) primary key not null,
	dept_no varchar(30)

);

create table dept_emp (
	emp_no int,
	dept_no varchar(30),
	primary key (emp_no, dept_no)

);

create table dept_manager (
	dept_no varchar(30),
	emp_no int,
	primary key (dept_no, emp_no)
	
);

create table titles (
	title_id varchar(30) primary key not null,
	title varchar(30)
);

create table salaries (
	
	salary int primary key not null,
	emp_no int
);
