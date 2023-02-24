# Data Control Language and Transaction Control Language

## DCL Commands

### Q1) Give grant permission to your neighbor for any one of your tables. Tell him/her to access (modify the data) your table from their login.

``` sql
GRANT SELECT, INSERT, UPDATE ON EMPTO RA2011003010732;
```


### Q3) Revoke the permission and tell them to try for accessing your table.

``` sql
REVOKE SELECT, INSERT, UPDATE ON EMP FROM RA2011003010732;
```