# Ex-4 INTEGRITY	CONSTRAINTS

### Q1) To create the Department table with the attributes and add a primary key constraint to DEPT_NO:

![Screenshot 2023-02-21 at 9 15 13 AM](https://user-images.githubusercontent.com/69889418/220242394-e2818f44-c5cb-47e6-88aa-52dac065c34d.png)

``` sql
CREATE TABLE Department (
  DEPT_NO NUMBER(5) PRIMARY KEY,
  DNAME VARCHAR(10),
  DLOC VARCHAR(10)
);
```
### Q2) To create the EMP table with the attributes and add a primary key constraint to EMP_NO and a default constraint to MANAGER_NAME:

![Screenshot 2023-02-21 at 9 15 47 AM](https://user-images.githubusercontent.com/69889418/220242468-232bc435-d528-4c90-8668-2bb1d363c18b.png)

``` sql
CREATE TABLE EMP (
  EMP_NO NUMBER(5) PRIMARY KEY,
  ENAME VARCHAR(10),
  JOB VARCHAR(10),
  MANAGER_NAME VARCHAR(10) DEFAULT 'Mr.K. RAM',
  HIRE_DATE DATE,
  SALARY NUMBER(50),
  COMMISSION NUMBER(50),
  DEPT_NO VARCHAR(5),
  CONSTRAINT fk_deptno FOREIGN KEY (DEPT_NO) REFERENCES Department(DEPT_NO)
);

```

### Q3) To add a unique key constraint to DNAME column of Department table:

``` sql
ALTER TABLE Department ADD CONSTRAINT uk_dname UNIQUE (DNAME);
```

### Q4) To add a not null constraint to HIRE_DATE column of Department table:

``` sql
ALTER TABLE Department MODIFY HIRE_DATE NOT NULL;
```


### Q5) To add a check constraint to the EMP table to restrict salary values between 10,000 and 20,000:

``` sql
ALTER TABLE EMP ADD CONSTRAINT chk_salary CHECK (SALARY BETWEEN 10000 AND 20000);
```

### Q6) To add a foreign key constraint to DEPT_NO column of EMP table referencing DEPT_NO of Department table:

``` sql
ALTER TABLE EMP ADD CONSTRAINT fk_deptno FOREIGN KEY (DEPT_NO) REFERENCES Department(DEPT_NO);
```
