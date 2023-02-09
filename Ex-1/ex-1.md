# Ex-1 CREATING DATABASE TABLE

## Department table

### Q1) Create the tables DEPT as described below

![Screenshot 2023-02-10 at 12 50 12 AM](https://user-images.githubusercontent.com/69889418/217915784-ed8a8ba1-94fb-40eb-adc9-947594e4c0dc.png)

``` SQL
CREATE TABLE DEPT (
	DEPTNO int,
	DNAME varchar(255),
	LOC varchar(50)
);
```


### Q2) Confirm table creation

``` SQL
DESC DEPT;
```

### Q7) Add new columns COMNT and MISCEL in DEPT table of character type.

``` SQL
ALTER TABLE DEPT ADD COMNT char(50);

ALTER TABLE DEPT ADD MISCEL char(50);
```

### Q8) Modify the size of column LOC by 15 in the DEPT table

``` SQL
ALTER TABLE DEPT MODIFY LOC varchar(15);
```

### Q9) Set MISCEL column in the DEPT table as unused

``` SQL
ALTER TABLE DEPT DROP COLUMN MISCEL;
```

### Q10) Drop the column COMNT from the table DEPT

``` SQL
ALTER TABLE DEPT DROP COLUMN COMNT;
```

### Q12) Rename the table DEPT to DEPT12

``` sql
ALTER TABLE DEPT RENAME TO DEPT12;
```
### Q13) Remove all the rows in the table DEPT12 (Presently no records in DEPT12)

``` sql
TRUNCATE TABLE DEPT12;
```

### Q11) Drop unused columns in DEPT table

``` sql
DROP TABLE DEPT
```
