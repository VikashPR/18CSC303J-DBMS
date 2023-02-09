# Ex-1 CREATING DATABASE TABLE

### Q1) Create the tables DEPT and EMP as described below

![Screenshot 2023-02-10 at 12 50 12 AM](https://user-images.githubusercontent.com/69889418/217915784-ed8a8ba1-94fb-40eb-adc9-947594e4c0dc.png)

``` SQL
  CREATE TABLE DEPT (
    DEPTNO int,
    DNAME varchar(255),
    LOC varchar(50)
);
```

![Screenshot 2023-02-10 at 12 58 32 AM](https://user-images.githubusercontent.com/69889418/217917495-bd764b24-f3c2-4cfa-8567-65caa3414609.png)

``` SQL
  CREATE TABLE EMP (
    EMPNO int,
    ENAME varchar(255),
	  JOB char(30),
  	MGR int,
  	HIREDATE DATE,
  	SAL int,
  	COMM int,
  	DEPTNO int
);
```
