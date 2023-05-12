# BASIC SELECT STATEMENTS

### Q1) Update all the records of manager table by increasing 10% of their salary as bonus.

``` sql
UPDATE manager SET salary = salary * 1.1;
```

### Q2) Delete the records from manager table where the salary less than 2750.
``` sql
DELETE FROM manager WHERE salary < 2750;
```

### Q3) Display each name of the employee as “Name” and annual salary as “Annual Salary” (Note: Salary in emp table is the monthly salary)

``` sql
SELECT ename AS "Name", sal * 12 AS "Annual Salary" FROM emp;
```

### Q4) List concatenated value of name and designation of each employee.
``` sql
SELECT ename || ' - ' || job AS "Name and Designation" FROM emp;
```

### Q5) List the names of Clerks from emp table.
``` sql
SELECT ename FROM emp WHERE job = 'CLERK';
```

### Q6) List the Details of Employees who have joined before 30 Sept 81.
``` sql
SQL> SELECT * FROM emp WHERE hiredate < '30-SEP-1981';
```

### Q7) List names of employees who’s employee numbers are 7369,7839,7934,7788.
``` sql
SELECT ename FROM emp WHERE empno IN (7369,7839,7934,7788);
```

### Q8) List the names of employee who are not Managers.
``` sql
SELECT ename FROM emp WHERE job <> 'MANAGER';
```

### Q9) List the names of employees not belonging to dept no 30,40 & 10
``` sql
SQL> SELECT ename FROM emp WHERE deptno NOT IN (30, 40, 10);
```

### Q10) List names of those employees joined between 30 June 81 and 31 Dec 81.
```
SELECT ename FROM emp WHERE hiredate BETWEEN '30-JUN-1981' AND '31-DEC-1981';
```

### Q11) List different designations in the company.
``` sql
SELECT DISTINCT job FROM emp;
```

### Q12) List the names of employees not eligible for commission.
``` sql
SELECT ename FROM emp WHERE comm IS NULL;
```

### Q13) List names and designations of employee who does not report to anybody.
``` sql
SELECT ename, job FROM emp WHERE mgr IS NULL;
```

### Q14) List all employees not assigned to any department.
``` sql
SELECT ename FROM emp WHERE deptno IS NULL;
```

### Q15) List names of employee who are eligible for commission.
``` sql
SELECT ename FROM emp WHERE comm IS NOT NULL;
```

### Q16) List employees whose name either start or end with ‘s’.
``` sql
SELECT ename FROM emp WHERE ename LIKE 'S%' OR ename LIKE '%S';
```

### Q17) List names of employees whose names have ‘i’ as the second character.
``` sql
SELECT ename FROM emp WHERE ename LIKE '_i%';
```

### Q18) Sort emp table in ascending order by hire-date and list ename, job, deptno and hire-date.
``` sql
SELECT ename, job, deptno, hiredate FROM emp ORDER BY hiredate ASC;
```

### Q19) Sort emp table in descending order by annual salary and list empno, ename, job and annual-salary. (Note : Salary in emp table is the monthly salary)
``` sql
SELECT empno, ename, job, sal * 12 AS "Annual Salary" FROM emp ORDER BY sal DESC;
```
### Q20) List ename, deptno and sal after sorting emp table in ascending order by dept
``` sql
SELECT ename, deptno, sal
FROM emp
ORDER BY deptno ASC, sal DESC;
```
