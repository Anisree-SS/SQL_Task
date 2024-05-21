Qn NO 1:

Create database & 3 tables
○ Employees
○ Departments
○ Salary_grad

-- Database Table employees
emp_id	emp_name	job_name	manager_id	hire_date	salary	    commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    NULL	    2001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	    400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	    600.00	    3001
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    NULL	    2001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	    1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    NULL	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    NULL	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    NULL	    2001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	    NULL	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	    0.00	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	    NULL	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    NULL	    3001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	    NULL	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    NULL	    1001


1. From the above table return complete information about the employees.

    select * from employees

-- Sample Output:
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	NULL	    2001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	NULL	    2001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	NULL	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	NULL	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	NULL	    2001
68319	kayling	    president	NULL	    1991-11-18	6000.00	NULL	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	NULL	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	NULL	    3001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	NULL	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	NULL	    1001

2. From the table, write a SQL query to find the salaries of all employees. Return salary.
    
    select salary from employees

-- Sample Output
salary
900.00
1700.00
1350.00
2957.00
1350.00
2750.00
2550.00
3100.00
6000.00
1600.00
1200.00
1050.00
3100.00
1400.00

3. From the table, write a SQL query to find the unique designations of the employees.
Return job name

    select distinct job_name from employees

-- Sample Output
job_name
ANALYST
CLERK
MANAGER
president
SALESMAN

4. From the following table, write a SQL query to list the employees’ names, increase their
salary by 15%, and express the number of Dollars