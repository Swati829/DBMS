--1.	Retrieve all data from employee, jobs and deposit.
		
		select * from Employee;
		select * from Job;
		select * from deposit;

--2.	Give details of account no. and deposited rupees of customers having account opened between dates 01-01-06 and 25-07-06.
		
		SELECT a_no, Amount 
		FROM deposit 
		WHERE a_date BETWEEN '01-JAN-06' AND '25-JUL-06';

--3.	Display all jobs with minimum salary is greater than 4000.

		SELECT job_id, job_title 
		FROM Job 
		WHERE min_sal>4000;

--4.	Display name and salary of employee whose department no is 20. Give alias name to name of employee.
		
		SELECT emp_name as employee , emp_sal 
		FROM EMPLOYEE as e
		WHERE dept_no=20;
		


--5.	Display employee no,name and department details of those employee whose department lies in(10,20)
		
		SELECT emp_name, emp_no, dept_no 
		FROM EMPLOYEE 
		WHERE dept_no BETWEEN 10 AND 20;

--6.	Display all employee whose name start with ‘A’ and third character is ‘ ‘a’.
		
		 SELECT EMP_NAME 
		 FROM EMPLOYEE 
		 WHERE EMP_NAME LIKE 'A_a%';

--7.	Display name, number and salary of those employees whose name is 5 characters long and first three characters are ‘Ani’.

		 SELECT EMP_NO,EMP_NAME,EMP_SAL 
		 FROM EMPLOYEE 
		 WHERE EMP_NAME LIKE 'Ani__';

--8.	Display the non-null values of employees and also employee name second charactershould be ‘n’ and string should be 5 character long.
	
		SELECT EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO 
		FROM Employee 
		where emp_name  LIKE  '_n___' AND EMP_COMM IS NOT NULL;


--9.	Display the null values of employee and also employee name’s third character should be ‘a’.
	 
		SELECT EMP_NO,EMP_NAME,EMP_SAL,EMP_COMM,DEPT_NO 
		FROM EMPLOYEE
		WHERE EMP_NAME  LIKE '__a%' AND EMP_COMM IS NULL;
