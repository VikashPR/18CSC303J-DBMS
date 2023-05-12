# VIEWS

### Q1) Create a view empv10 that contains empno, ename, job of the employees who work in dept 10. Also describe the structure of the view.
```sql
CREATE VIEW empv10 AS SELECT empno, ename, job FROM EMP WHERE deptno = 10;
```

### Q2) Create a view with column aliases empv30 that contains empno, ename, sal of the employees who work in dept 30. Also display the contents of the view.
```sql
CREATE VIEW empv30 AS SELECT empno AS "Employee Number", 
ename AS "Employee Name", sal AS "Salary" FROM EMP WHERE deptno = 30;
```

### Q3) Update the view empv10 by increasing 10% salary of the employees who work as ‘CLERK’. Also confirm the modifications in emp table
```sql
UPDATE empv10 SET sal = sal * 1.1 WHERE job = 'CLERK';
```

### Q4) Modify the view empv10 which contains the data empno, ename, job, sal. Add an alias for each column name.
```sql
CREATE OR REPLACE VIEW empv10 AS SELECT empno AS "Employee Number",
ename AS "Employee Name", job AS "Job Title", sal AS "Salary" FROM EMP WHERE deptno = 10;
```

### Q5) Using emp table, create a view pay which contains ename, monthly_sal, annual_sal, deptno.
```sql
CREATE VIEW pay AS SELECT ename, sal/12 AS monthly_sal, sal*12 AS annual_sal, deptno FROM EMP;

```

### Q6) Create a view dept_stat which contains department no., department name, minimum salary, maximum salary, total salary.
```sql
CREATE VIEW dept_stat AS SELECT d.deptno, d.dname, MIN(e.sal) AS min_sal, MAX(e.sal) AS max_sal, 
SUM(e.sal) AS total_sal FROM EMP e JOIN DEPT d ON e.deptno = d.deptno GROUP BY d.deptno, d.dname;
```

### Q8) Create a view empv10 with all the details of employees who work in dept no. 10.
```sql
CREATE VIEW empv10 AS SELECT * FROM emp WHERE deptno = 10 WITH READ ONLY;
```

### Q10) Delete the view empv20.
```sql
DROP VIEW empv20;
