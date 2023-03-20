# SQL FUNCTIONS

### Q1) Find number of rows in the table EMP

``` sql
SELECT COUNT(*) FROM emp;
```


### Q2) Find number of designations available in EMP table.

``` sql
SELECT COUNT(DISTINCT job) FROM emp;
```

### Q3) What is the difference between the following queries
``` sql
SELECT COUNT(comm) FROM emp;
```
This query will count the number of non-null values in the 'comm' column of the 'emp' table.

``` sql
SELECT COUNT(nvl(comm,0)) FROM emp;
```
This query will count the number of values in the 'comm' column of the 'emp' table, including null values. The null values are replaced with 0.

### Q4) Find maximum, minimum and average salary in EMP table.

``` sql
SELECT MAX(sal), MIN(sal), AVG(sal) FROM emp;
```

### Q5) Find number of employees who work in department number 30

``` sql
SELECT COUNT(*) FROM emp WHERE deptno = 30;
```

### Q6) Find the maximum salary paid to a ‘CLERK’

``` sql
SELECT MAX(sal) FROM emp WHERE job = 'CLERK';
```

### Q7) List the jobs and number of employees in each job. The result should be in the descending order of the number of employees.

``` sql
SELECT job, COUNT(*) as num_employees FROM emp GROUP BY job ORDER BY num_employees DESC;
```

### Q8) List the total salary, maximum and minimum salary and average salary of the employees jobwise.

``` sql
SELECT job, SUM(sal) as total_salary, MAX(sal) as max_salary, MIN(sal) as min_salary, AVG(sal) as avg_salary FROM emp GROUP BY job;
```

### Q9) List the total salary, maximum and minimum salary and average salary of the employees jobwise, for department 20 and display only those rows having an average salary > 1000.

``` sql
 SELECT job, SUM(sal) as total_salary, MAX(sal) as max_salary, MIN(sal) as min_salary, AVG(sal) as avg_salary FROM emp WHERE deptno = 20 GROUP BY job HAVING AVG(sal) > 1000;
```

### Q10) List the job and total salary of employees jobwise, for jobs other than ‘PRESIDENT’ and display only those rows having total salary > 5000.

``` sql
 SELECT job, SUM(sal) as total_salary FROM emp WHERE job != 'PRESIDENT' GROUP BY job HAVING SUM(sal) > 5000;
```
