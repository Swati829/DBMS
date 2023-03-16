create table Job(
job_id	Varchar(15),
job_title	Varchar(30),
min_sal	Int,
max_sal	Int);

create table Employee(
emp_no	Int,
emp_name	Varchar(30),
emp_sal	decimal(8,2),
emp_comm	decimal(6,1),
dept_no	Int);

create table deposit(
a_no	Int identity(1,1),
Cname	Varchar(50),
Bname	Varchar(30),
Amount	Decimal(10,2),
a_date	Date);
             
create table borrow(
loanno	Int ,
cname	Varchar(25),
bname	Varchar(20),
amount	Decimal(6,2));



--Insert Value
insert into Employee Values(
101,'Smith',800,null,20),
(102,'Snehal',1600,300,	25),
(103,'Adama',1100,0,20),
(104,'Aman',3000,null,15),
(105,'Anita',5000,50000,10),
(106,'Sneha',2450,24500,10),
(107,'Anamika',2975,null,30);

select * from Employee;

insert into Job values(
'IT_PROG','Programmer',4000,10000),
('MK_MGR','Marketing manager',9000,15000),
('FI_MGR','Finance manager',8200,12000),
('FI_ACC','Account',4200,9000),
('LEC','Lecturer',6000,17000),
('COMP_OP','Computer Operator',1500,3000);


SET IDENTITY_INSERT deposit ON;
insert into deposit(a_no,Cname,Bname,Amount,a_date) values(
101	,'Anil','andheri',7000,'01-jan-06'),
(102,'sunil','virar',5000,'15-jul-06'),
(103,'jay','villeparle',6500,'12-mar-06'),
(104,'vijay','andheri',8000,'17-sep-06'),
(105,'keyur','dadar',7500,'19-nov-06'),
(106,'mayur','borivali',5500,'21-dec-06');
SET IDENTITY_INSERT deposit OFF;

select *from deposit;

--1. List Total deposit from depsoit
SELECT SUM (AMOUNT) FROM DEPOSIT;

--2.List total amount from andheri branch
SELECT SUM (AMOUNT) FROM DEPOSIT WHERE
BNAME='ANDHERI'; --3.Count total number of customersSELECT COUNT (CNAME) FROM DEPOSIT;--4.Count total number of customer’s cities.SELECT COUNT (DISTINCT CITY) FROM DEPOSIT;--5.Update the value dept_no to 10 where second character of emp. name is ‘m’.UPDATE EMPLOYEE SET DEPT_NO=10 WHERE EMP_NAME LIKE '_m%';--6.Update the value of employee name whose employee number is 103.UPDATE EMPLOYEE SET EMP_NAME='DARSHAN' WHERE EMP_NO=103;--7.Write a query to display the current date. Label the column Date
SELECT a_date AS "DATE" FROM deposit;

--8.For each employee, display the employee number, salary, and salary increased  by 15% and expressed as a whole number. Label the column New Salary
SELECT EMP_NO,EMP_NAME,EMP_SAL,EMP_SAL+(EMP_SAL*15/100) AS "New
Salary" FROM EMPLOYEE; 

--9.Modify your previous query  to add a column that subtracts the old salary from the new salary. Label the column Increment.
SELECT EMP_NO,EMP_NAME,EMP_SAL,EMP_SAL+(EMP_SAL*15/100) 
AS "New Salary",(EMP_SAL+(EMP_SAL*15/100))- EMP_SAL AS  "INCREASE" FROM employee;