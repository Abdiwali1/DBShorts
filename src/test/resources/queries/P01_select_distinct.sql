select * from employees;

/*
 MAC --> CMD + ENTER
 WIN --> CTRL + ENTER

 */

/*
 /*

SELECT STATEMENT:

	1. selecting ENTIRE columns from a table
		select * from TableName;

	2. selecting a SINGLE column from a table
		select columnName from TableName;

	3. selecting MULTIPLE columns from a table
		select ColumnName1,ColumnName1.... from TableName;

	4. selecting columns from a MULTIPLE tables
		select TableName1.ColumnName1,TableName2.ColumnName2  from TableName1, TableName2;

*/
select * from departments;
-- Each SQL statement needs to end-with semi-colon

select * from employees;

select department_name from departments;

-- SQL language is case insensitive
SELECT department_name FROM departments;
SELECT department_name fRoM departments;

-- If we wanna get multiple column names we should use comma
select DEPARTMENT_ID,DEPARTMENT_NAME from DEPARTMENTS;


select * from DEPARTMENTS,EMPLOYEES;

select EMPLOYEES.FIRST_NAME,DEPARTMENTS.DEPARTMENT_NAME from DEPARTMENTS,EMPLOYEES;


/*

 DISTINCT --> Display only different values from result.Original data still stays in database

 */

 select FIRST_NAME from EMPLOYEES;
 select distinct (FIRST_NAME) from EMPLOYEES;

 select SALARY from EMPLOYEES;
 select distinct (SALARY) from EMPLOYEES;

