 >> 1 . Display the department names in the lower case but the initial must be in uppercase
 
 # select INITCAP(dname) as Dept_name from dept;
 
 DEPT_NAME
--------------
Accounting
Research
Sales
Operations
It
Cse

>> 2.Determine the ‘ename’, ‘job’, ‘sal’ rename the title as Job-sal the output must be Job-Sal as
SMITH [CLERK] RS.2000  

#select ename||'['||job||']'||' RS.'||sal as Job_Sal from emp;

JOB_SAL
-----------------------------------------------------------------
KING[PRESIDENT] RS.5000
BLAKE[MANAGER] RS.2850
CLARK[MANAGER] RS.2450
JONES[MANAGER] RS.2975
MARTIN[SALESMAN] RS.1250
ALLEN[SALESMAN] RS.1600
TURNER[SALESMAN] RS.1500
JAMES[CLERK] RS.950
WARD[SALESMAN] RS.1250
FORD[ANALYST] RS.3000
SMITH[CLERK] RS.800
SCOTT[ANALYST] RS.3200
ADAMS[CLERK] RS.1100

>>  3. For each department, Count the number of times S occurs in department names.

# select length(dname) - length(replace(lower(dname),'s','')) as freq_s
  from dept
  
  
      FREQ_S
----------
         0
         1
         2
         1
         0
         1

  
>> 4. Write a query to display the department name which does not contain any employees.

# select d.dname,d.deptno from dept d
  where d.deptno not in (select distinct deptno from emp)
  
  DNAME              DEPTNO
-------------- ----------
OPERATIONS             40
it                     50
cse                    60

>> 5. Write a query to display all employee details where employee was joined in year date wise
    1980 and 1990 and 2nd week of every month

 #  select ename
    from emp
    where to_char(hiredate,'YYYY') between 1980 and 1990 and to_char(hiredate,'w') = 2;

ENAME
----------
CLARK
TURNER
SCOTT
ADAMS

>> 6. Write an SQL statement to convert the current date to new date picture ex: MONDAY 10th
June 2005 10:30.00 PM

#  select to_char(sysdate,'DAY ddth month YYYY hh:mm:ss PM') from dual;

  TO_CHAR(SYSDATE,'DAYDDTHMONTHYYYYHH:MM:SS
-----------------------------------------
FRIDAY    02nd september 2022 03:09:29 PM

>> 7. Write a query to display all employee details who joined last Wednesday of a month and
  experience should be greater than 20 months.

#

8. Write a query to calculate the service of employees rounded to years.
9. Write a query that will display a list of employees and their salary and the comments as
follows:
a. If the salary is more than 1500 then display “above target”
b. If the salary is equal to 1500 then display “on the target”
c. If the salary is less than 1500 then display “below the target”
10. Display all employee names, employee number, department names &amp; salary grades for
all employees who are working in department 30.
11. Display the time of day.
12. Find all employees who earn a salary greater than the average salary of their departments.
13. Write a query to find the name of the manager and number of sub-ordinates.
14. Write a query to find out the manager having Maximum number of sub-ordinates.
15. Write a query to find out the top three earners.
16. Write a query to find out the employees who have joined before their managers.
17. Write a query to find out the year, where most people join in the company displays the year
and No. of Employees.
18. Write a query which will return the DAY of the week.(ie. MONDAY), for any date entered in
the format: DD.MM.YY
