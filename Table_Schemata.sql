

-- Departments Table
drop table if exists Departments cascade;
CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);

select * from Departments;

-- Employee Table
drop table if exists Employee cascade;
CREATE TABLE Employee (
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date Date   NOT NULL,
    PRIMARY KEY (emp_no)
);

select * from employee;

-- Department Employee Table
-- https://www.javatpoint.com/sql-composite-key
drop table if exists Dept_Emp cascade;
CREATE TABLE Dept_Emp (
    	emp_no INTEGER   NOT NULL,
    	dept_no VARCHAR   NOT NULL,
		primary key (emp_no, dept_no),
    foreign key (emp_no) references Employee (emp_no),
	foreign key (dept_no) references Departments (dept_no)	
);

select * from Dept_Emp;

-- Department Manager Table
drop table if exists Dept_Manager cascade;
CREATE TABLE Dept_Manager (
    	dept_no VARCHAR   NOT NULL,
    	emp_no INTEGER   NOT NULL,
		primary key (dept_no, emp_no),
    foreign key (dept_no) references Departments (dept_no),
	foreign key (emp_no) references Employee (emp_no)
);

select * from Dept_Manager;

-- Salaries Table
drop table if exists Salaries cascade;
CREATE TABLE Salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
    PRIMARY KEY (emp_no, salary),
	foreign key (emp_no) references Employee (emp_no)
);

select * from Salaries;

-- Titles Table
drop table if exists Titles;
CREATE TABLE Titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title_id)
);

select * from Titles;