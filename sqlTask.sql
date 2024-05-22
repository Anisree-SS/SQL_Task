Qn NO 1:

Create database & 3 tables
○ Employees
○ Departments
○ Salary_grad

-- Database Table employees
emp_id	emp_name	job_name	manager_id	hire_date	salary	    commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	        	    2001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	    400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	    600.00	    3001
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	        	    2001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	    1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	        	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	        	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	        	    2001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	        	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	    0.00	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	        	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	        	    3001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	        	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	        	    1001

-- Database Table department
dep_id	dep_name	dep_location
1001	finance	    sydney
2001	audit	    melbourne
3001	marketing	perth
4001	production	brisbane

-- Database Table department
grade	min_salary	max_salary
1	    800	        1300
2	    1301	    1500
3	    1501	    2100
4	    2101	    3100
5	    3101	    9999

1. From the above table return complete information about the employees.

    SELECT * 
    FROM employees;

-- Sample Output:
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    	    2001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    	    2001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    	    2001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	        	1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	    	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    	    3001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	    	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    	    1001

2. From the table, write a SQL query to find the salaries of all employees. Return salary.
    
    SELECT salary 
    FROM employees;

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

    SELECT DISTINCT job_name 
    FROM employees;

-- Sample Output
job_name
ANALYST
CLERK
MANAGER
president
SALESMAN

4. From the following table, write a SQL query to list the employees names, increase their
salary by 15%, and express the number of Dollars

    SELECT emp_name, '$' + CAST(FLOOR(CAST(salary AS DECIMAL(10, 2)) * 1.15) AS VARCHAR) AS Salary
    FROM employees;

-- Sample Output
emp_name    Salary
SANDRINE	$1035
ADELYNE	    $1955
WADE	    $1552
JONAS	    $3400
MADDEN	    $1552
BLAZE	    $3162
CLARE	    $2932
SCARLET	    $3565
KYLING	    $6900
TUCKER	    $1840
ADNERS	    $1380
JULIUS	    $1207
FRANK	    $3565
MARKER	    $1610


5. From the following table, write a SQL query to list the employees name and job name as
a format of "Employee & Job"

    SELECT CONCAT(emp_name,' - ' ,job_name) AS 'Employee & Job' 
    FROM employees;

-- Sample Output
Employee & Job
SANDRINE - CLERK
ADELYNE - SALESMAN
WADE - SALESMAN
JONAS - MANAGER
MADDEN - SALESMAN
BLAZE - MANAGER
CLARE - MANAGER
SCARLET - ANALYST
KYLING - PRESIDENT
TUCKER - SALESMAN
ADNERS - CLERK
JULIUS - CLERK
FRANK - ANALYST
MARKER - CLERK


6. From the following table, write a SQL query to find those employees with a hire date in
the format like February 22, 1991. Return employee ID, employee name, salary, hire date.

    SELECT emp_id,emp_name,salary,FORMAT(hire_date, 'MMMM-dd-yyyy') AS hire_date  
    FROM employees;

-- Sample Output
emp_id  emp_name    salary      hire_date
63679	SANDRINE	900.00	    December-18-1990
64989	ADELYNE	    1700.00	    February-20-1991
65271	WADE	    1350.00	    February-22-1991
65646	JONAS	    2957.00	    April-02-1991
66564	MADDEN	    1350.00	    September-28-1991
66928	BLAZE	    2750.00	    May-01-1991
67832	CLARE	    2550.00	    June-09-1991
67858	SCARLET	    3100.00	    April-19-1997
68319	KYLING	    6000.00	    November-18-1991
68454	TUCKER	    1600.00	    September-08-1991
68736	ADNERS	    1200.00	    May-23-1997
69000	JULIUS	    1050.00	    December-03-1991
69062	FRANK	    3100.00	    December-03-1991
69324	MARKER	    1400.00	    January-23-1992


7. From the following table, write a SQL query to count the number of characters except
the spaces for each employee name. Return employee name length

    SELECT LEN(TRIM(emp_name)) AS Length 
    FROM employees;

-- Sample output
Length
8
7
4
5
6
5
5
7
7
6
6
6
5
6


8.From the following table, write a SQL query to find the employee ID, salary, and
commission of all the employees

    SELECT emp_id,salary,commission 
    FROM employees;

-- Sample output
emp_id  salary  commission
63679	900.00	    
64989	1700.00	400.00
65271	1350.00	600.00
65646	2957.00	    
66564	1350.00	1500.00
66928	2750.00	    
67832	2550.00	    
67858	3100.00	    
68319	6000.00	    
68454	1600.00	0.00
68736	1200.00	    
69000	1050.00	    
69062	3100.00	    
69324	1400.00	    


9. From the following table, write a SQL query to find those employees who do not belong
to the department 2001. Return complete information about the employees. (Using NOT IN)

    SELECT * 
    FROM employees
    WHERE dep_id NOT IN(2001);

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    	    1001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	        	1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    	    3001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    	    1001


10. From the following table, write a SQL query to find those employees who joined before
1991. Return complete information about the employees.

    SELECT * 
    FROM employees
    WHERE FORMAT(hire_date,'yyyy') < 1991;

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    	    2001


11. From the following table, write a SQL query to compute the average salary of those
employees who work as ANALYST. Return average salary

    SELECT AVG(salary) AS 'Avg Salary' 
    FROM employees
    where job_name ='ANALYST';

--Sample Output
Avg Salary
3100.000000


12. From the following table, write a SQL query to find the details of the employee BLAZE

    SELECT * 
    FROM employees
    WHERE emp_name='BLAZE';

--Sample Output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    	    3001


13. From the following table, write a SQL query to find those employees whose salary
exceeds 3000 after giving a 25% increment. Return complete information about the
employees.

    SELECT * 
    FROM employees
    WHERE salary*1.25 >3000;

--Sample Output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    	    2001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    	    2001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	        	1001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	    	    2001


14. From the following table, write a SQL query to find those employees who joined in the
month January. Return complete information about the employees.

    SELECT * 
    FROM employees
    WHERE FORMAT(hire_date,'MM')=01;

--Sample Output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00		    1001


15. From the following table, write a SQL query to find those employees who joined before
1st April 1991. Return employee ID, employee name, hire date and salary

    SELECT emp_id,emp_name,hire_date,salary
    FROM employees 
    WHERE hire_date < '1991-04-01';

--Sample output
emp_id	emp_name	hire_date	salary
63679	SANDRINE	1990-12-18	900.00
64989	ADELYNE	    1991-02-20	1700.00
65271	WADE	    1991-02-22	1350.00


16. From the following table, write a SQL query to find the name and salary of the employee
FRANK

    SELECT emp_name,salary
    FROM employees
    WHERE emp_name='FRANK';

-- Sample output
emp_name	salary
FRANK	    3100.00


17. From the following table, write a SQL query to list all the employees except PRESIDENT
and MANAGER in ascending order of salaries. Return complete information about the
employees. (Using Order By)

    SELECT * 
    FROM employees
    WHERE job_name NOT IN('MANAGER','PRESIDENT')
    ORDER BY(salary);

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00		        2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00		        3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00		        2001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00		        1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00		        2001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00		        2001


18. From the following table, write a SQL query to find the highest salary. Return the
highest salary.

    SELECT MAX(salary) AS 'MAX' 
    FROM employees;

-- Sample output
MAX
6000.00


19. From the table, write a SQL query to find the average salary and average total
remuneration (salary and commission) for each type of job. Return name, average salary
and average total remuneration. (Using GROUP BY)

    SELECT job_name,avg(salary) AS 'avgSal',avg(salary+commission) AS 'totalAvg'
    FROM employees
    GROUP BY(job_name);

-- Sample output
job_name	avgSal	    totalAvg
ANALYST	    3100.000000	
CLERK	    1137.500000	
MANAGER	    2752.333333	
PRESIDENT	6000.000000	
SALESMAN	1500.000000	2125.000000


20. From the following table, write a SQL query to find those employees who work in the
department ID 1001 or 2001. Return employee ID, employee name, department ID,
department location, and department name.(Using IN clause)

    SELECT e.emp_id,e.emp_name,e.dep_id,d.dep_location,d.dep_name
    FROM employees e,department d
    WHERE e.dep_id = d.dep_id
    AND d.dep_id IN (2001,1001);

-- Sample output
emp_id	emp_name	dep_id	dep_location	dep_name
63679	SANDRINE	2001	melbourne	    audit
65646	JONAS	    2001	melbourne	    audit
67832	CLARE	    1001	sydney	        finance
67858	SCARLET	    2001	melbourne	    audit
68319	KYLING	    1001	sydney	        finance
68736	ADNERS	    2001	melbourne	    audit
69062	FRANK	    2001	melbourne	    audit
69324	MARKER	    1001	sydney	        finance


21. From the table, write a SQL query to list the managers and number of employees work
under them. Sort the result set in ascending order on manager. Return manager ID and
number of employees under them.(Using GROUP BY & ORDER BY)

    SELECT manager_id,count(manager_id) as count
    FROM employees 
    GROUP BY manager_id
    ORDER BY  manager_id;

-- Sample output
manager_id	count
65646	    2
66928	    5
67832	    1
67858	    1
68319	    3
69062	    1


22. From the table, write a SQL query to find those departments where at least two
employees work. Return department id, number of employees.(GROUP BY & HAVING)

    SELECT dep_id,count(emp_id) AS 'count'
    FROM employees
    GROUP BY dep_id
    HAVING count(emp_id)>=2;

-- Sample output
dep_id	count
1001	3
2001	5
3001	6


23. From the table, write a SQL query to find those employees whose names contain the
character set 'AR' together. Return complete information about the employees. (using like)

    SELECT *
    FROM employees
    WHERE emp_name LIKE '%AR%';

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    	    1001


24. Add a column for “Gender” in the employee table and update each row accordingly.

    ALTER TABLE employees 
    ADD gender varchar(10);

    UPDATE employees 
    SET gender=''
    WHERE emp_id= ;

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id	gender
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    	    2001	MALE
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001	MALE
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001	MALE
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    	    2001	MALE
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001	MALE
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    	    3001	MALE
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    	    1001	FEMALE
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    	    2001	FEMALE
68319	KYLING	    PRESIDENT	    	    1991-11-18	6000.00	    	    1001	FEMALE
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001	MALE
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	    	    2001	FEMALE
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    	    3001	FEMALE
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	    	    2001	MALE
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    	    1001	MALE


25. From the above table we need to retrieve all employees except ‘Manager’ & ’President’
Job name.

    SELECT * 
    FROM employees 
    WHERE job_name NOT IN('PRESIDENT','MANAGER');

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id	gender
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    	    2001	MALE
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001	MALE
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001	MALE
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001	MALE
67858	SCARLET 	ANALYST 	65646	    1997-04-19	3100.00	    	    2001	FEMALE
68454	TUCKER  	SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001	MALE
68736	ADNERS  	CLERK	    67858	    1997-05-23	1200.00	    	    2001	FEMALE
69000	JULIUS  	CLERK	    66928	    1991-12-03	1050.00	    	    3001	FEMALE
69062	FRANK	    ANALYST 	65646	    1991-12-03	3100.00	    	    2001	MALE
69324	MARKER  	CLERK	    67832	    1992-01-23	1400.00	    	    1001	MALE


26. From the above table we need to display ‘Management Level’ - labelname for
‘President’,’Manager’,’Analyst’ jobs and ‘Employee Level’ - label name for ‘Salesman’,’Clerk’ job
names.

    SELECT emp_name,job_name,
    CASE 
        WHEN job_name IN('MANAGER','ANALYST','PRESIDENT') THEN 'Management Level'
        WHEN job_name IN('SALESMAN','CLERK') THEN 'Employee Level'
    END
    AS 'level'
    FROM employees;

-- Sample output
emp_name	job_name	level
SANDRINE	CLERK	    Employee Level
ADELYNE	    SALESMAN	Employee Level
WADE	    SALESMAN	Employee Level
JONAS	    MANAGER	    Management Level
MADDEN	    SALESMAN	Employee Level
BLAZE	    MANAGER	    Management Level
CLARE	    MANAGER	    Management Level
SCARLET	    ANALYST	    Management Level
KYLING	    PRESIDENT	Management Level
TUCKER	    SALESMAN	Employee Level
ADNERS	    CLERK	    Employee Level
JULIUS	    CLERK	    Employee Level
FRANK	    ANALYST	    Management Level
MARKER	    CLERK	    Employee Level


27. Update commission field to 650.00 for job name titled as “analyst” in “employee” table
using “Exist” clauses.
● Stored Procedure
● Trigger
● Function in SQL
● TEMP using instead of IN
● INDEXING

    UPDATE employees
    SET commission=650.00
    WHERE EXISTS(
        SELECT 1 
        FROM employees e
        WHERE employees.emp_id=e.emp_id 
        AND e.job_name ='ANALYST'
    );

-- Sample output
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id	gender
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	     	    2001	MALE
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001	MALE
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001	MALE
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    	    2001	MALE
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00 	3001	MALE
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    	    3001	MALE
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    	    1001	FEMALE
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	650.00	    2001	FEMALE
68319	KYLING	    PRESIDENT	    	    1991-11-18	6000.00	    	    1001	FEMALE
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001	MALE
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	    	    2001	FEMALE
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    	    3001	FEMALE
69062	FRANK	    ANALYST 	65646	    1991-12-03	3100.00	650.00	    2001	MALE
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    	    1001	MALE
