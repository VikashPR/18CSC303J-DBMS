-- create a table
CREATE TABLE emp (
    empno numeric,
    empname VARCHAR(255),
    DOB DATE,
    salary numeric, 
    designation VARCHAR(20)
);

INSERT INTO emp VALUES (010, 'John Wick', '1.1.20021',12,'Black Cat');
INSERT INTO emp VALUES (020, 'King Arthur ', '1.3.1',2345,"Kinght");

-- query 1
SELECT * from emp;

-- query 2
SELECT empname,salary FROM emp;

-- query 3
UPDATE emp SET salary = salary + 1000;

-- query 4 
Delete FROM emp WHERE empno = 010;

-- query 5 
SELECT * FROM emp;