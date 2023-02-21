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

