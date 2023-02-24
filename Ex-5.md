# Data Control Language and Transaction Control Language

## DCL Commands

### Q1) Give grant permission to your neighbor for any one of your tables. Tell him/her to access (modify the data) your table from their login.

``` sql
GRANT SELECT, INSERT, UPDATE ON EMP TO RA2011003010732;
```

### Q2) Check the table again from your login. Observe the inference.

``` sql
DESC EMP;
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

### Q3) Rollback to the previous state of data in the deparment table and specify the output of the table with select query.
```SQL
ROLLBACK;
```
```SQL
SELECT * FROM DEPT1;
```

### Q4) Delete all the ENTRIES from department table from the location CHICAGO.
```SQL
DELETE FROM DEPT1 WHERE LOC = 'CHICAGO';
```

### Q5) Do the following operations one after another Change LOC=’BOSTON’ for deptno=40 in DEPT table
```SQL
UPDATE DEPT1 SET LOC = 'BOSTON' WHERE DEPTNO = 40;
```
### Q6) Create SAVEPOINT in the name ‘update_over’
```SQL
SAVEPOINT update_over;
```
### Q7) Insert another row in DEPT table with your own values
```SQL
INSERT INTO DEPT1 (DEPTNO, DNAME, LOC) VALUES (50, 'MARKETING', 'LOS ANGELES');
```
### Q8) Display the updated data as of now in the department table.
```SQL
SELECT * FROM DEPT1;
```
### Q9) Create SAVEPOINT in the name ‘update_another’
```SQL
SAVEPOINT update_another;
```

### Q10) Display the data. Then Rollback the transaction upto the point ‘update_over’ and display the details of table and write the inference.
```SQL
SELECT * FROM DEPT1;
```
```SQL
ROLLBACK TO update_over;
```
```SQL
SELECT * FROM DEPT1;
