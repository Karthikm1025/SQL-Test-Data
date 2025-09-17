create table Departments 
(dept_name varchar(100),dept_no varchar(100),primary key(dept_no));

create table Employees
(emp_no int,emp_title_id varchar(10),birth_date date,first_name varchar(30),last_name varchar(30),sex varchar(1),hire_date date,
primary key (emp_no));

Create table DepartmentEmployees
(dept_no varchar(6),emp_no INT,primary key(dept_no),foreign key (dept_no) REFERENCES Departments(dept_no),
foreign key (emp_no) REFERENCES Employees(emp_no));

Create table DepartmentManager
(dept_no varchar(6),emp_no int,primary key (emp_no,dept_no),foreign key (dept_no) references Departments(dept_no));

Create table salaries 
(emp_no int,salary int,primary key (emp_no),foreign key (emp_no) references Employees(emp_no));

Create table Titles
(title_id varchar(5),title varchar(100),primary key (title_id));