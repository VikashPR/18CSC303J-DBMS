# Ex-2 Working with Data Manipulation commands

![Screenshot 2023-02-10 at 3 10 42 AM](https://user-images.githubusercontent.com/69889418/217945479-1722f36f-1b18-4a3d-9d29-fd2a9c753832.png)

``` sql
CREATE TABLE EMP (
    EMPNO int,
  	ENAME varchar(50),
    JOB varchar(20),
  	MGR int,
  	HIREDATE date,
  	SAL int,
  	COMM int,
  	DEPTNO int
);
```

![Screenshot 2023-02-10 at 3 11 18 AM](https://user-images.githubusercontent.com/69889418/217945590-4db7b3df-3342-4a49-9554-aecfdc81f27f.png)

``` SQL
CREATE TABLE DEPT (
    DEPTNO int,
    DNAME varchar(60),
    LOC varchar(50)
);
```

### Q1)	Insert the rows of DEPT table using syntax (i)

``` sql
INSERT INTO DEPT VALUES(10,	'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES(20,	'RESEARCH',	'DALLAS');
INSERT INTO DEPT VALUES(30,	'SALES', 'CHICAGO');
INSERT INTO DEPT VALUES(40,	'OPERATIONS', 'BOSTON');
```

### Q2)	Insert first & second rows of EMP table using syntax (ii)

``` sql
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,COMM,DEPTNO)
VALUES 
(7499,'ALLEN','SALESMAN',7698,'2022-07-2',1600,300,30),
(7521,'WARD','SALESMAN',7698,'2205-09-1',1250,500,30);
```

### Q3)	Insert the remaining rows of EMP table using syntax (iii)

``` sql
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,COMM,DEPTNO)
VALUES
(7521,	'WARD','SALESMAN',7698,'2280-09-1',	1250,500,30),
(7566,	'JONES','MANAGER',7839,'2280-09-1',	2975,500,20),
(7654,	'MARTIN','SALESMAN',7698,'2865-8-23', 1250,1400,30),
(7698,	'BLAKE','MANAGER',7839,'2865-1-2',	2850,1400,30),
(7782,	'CLARK','MANAGER',7839,'2865-06-2',	2450,1400,10),
(7788,	'SCOTT','ANALYST',7566,'2065-06-2',	3000,1400,20),
(7792,	'KING','PRESIDENT',7566,'2222-2-2',5000,1400,10);
```

### Q4) Create a table MANAGER with the columns mgr-id, name, salary and hiredate

``` sql
CREATE TABLE MANAGER(
  MRGID int primary key,
  NAME varchar(20),
  SAL int,
  HIREDATE date
);
```

### Q5)	Insert values into the table MANAGER by copying the values from EMP table where the designation of the employee is ‘MANAGER’

``` sql
INSERT INTO MANAGER SELECT EMPNO,ENAME,SAL,HIREDATE
FROM EMP WHERE JOB='MANAGER';
```

### Q6)	Change the LOC of all rows of DEPT table by ‘NEW YORK’

``` sql
UPDATE DEPT SET LOC = 'NEW YORK';
```

### Q7)	Change the LOC=’DALLAS’ for deptno=20 in DEPT table.

``` sql
UPDATE DEPT SET LOC = 'DALLAS' WHERE DEPTNO = 20;
```

### Q8) Delete the rows from EMP table whose employee name = ‘PAUL’

``` SQL
DELETE FROM EMP WHERE ENAME='PAUL';
```

### Q9) List all the columns and rows of the table DEPT

``` SQL
SELECT * FROM DEPT;
```

### Q10) List the name of the employee and salary of EMP table

``` SQL
SELECT ENAME, SAL FROM EMP;
```

### Q11) Without duplication, list all names of the department of DEPT table.

``` SQL
SELECT DISTINCT DNAME FROM DEPT;
```

### Q12) Find out the name of an employee whose EMPNO is 7788.

``` sql
SELECT ENAME FROM EMP WHERE EMPNO = 7788;
```
