# Data Control Language and Transaction Control Language

## DCL Commands

### Q1) Give grant permission to your neighbor for any one of your tables. Tell him/her to access (modify the data) your table from their login.

``` sql
GRANT SELECT, INSERT, UPDATE ON EMPTO RA2011003010732;
```

### Q2) Check the table again from your login. Observe the inference.

``` sql
 RA2011003010732/RA2011003010732@a1-a2-b1.c0vm8jxyhl5s.us-east-2.rds.amazonaws.com:1521/orcl
```

``` sql
DESC EMP;
```
### Q3) Revoke the permission and tell them to try for accessing your table.

``` sql
REVOKE SELECT, INSERT, UPDATE ON EMP FROM RA2011003010732;
```

## TCL

### Q1) Create the department table add the details and commit the data. Data for DEPT table
![TCL Table-1](https://user-images.githubusercontent.com/69889418/221097302-33d3fe54-ef30-4550-9e3d-5f033ea5977f.png)
``` sql
CREATE TABLE DEPT (
  DEPTNO INT PRIMARY KEY,
  DNAME VARCHAR(30) NOT NULL,
  LOC VARCHAR(30) NOT NULL
);

INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES (40, 'OPERATIONS', 'BOSTON');
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES (50, 'MANUFACTURING', 'BOSTON');

```

### Q2) Update the location of dept number ‘40’ as ‘San Francisco’ and don’tcommit the table.

``` sql
UPDATE DEPT SET LOC = 'San Francisco' WHERE DEPTNO = 40;
```
