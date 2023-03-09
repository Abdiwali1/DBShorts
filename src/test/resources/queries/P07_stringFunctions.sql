
/*
STRING FUNCTIONS

  concatenation operator: ||
  CONCAT(value1,value2);
  UPPER(value);
  LOWER(value);
  INITCAP(value);
  LENGTH(value);
  SUBSTR(columnName,beginningIndex,numberOfChar)
    - if beginning index 0 , it is treated as 1


  ONLY USED for the DISPLAY, does not modify table

  */


  /*
    concatenation operator: ||
    firstName   lastName
    Steven      King

    JAVA --> firstName+" "+lastName --> Steven King
    SQL  --> firstName||' '||lastName --> Steven King

   */

select first_name||' '||last_name from employees;

-- SKING@gmail.com
select email||'@gmail.com' from employees;

select * from employees;


-- CONCAT(value1,value2);
-- Steven King
select CONCAT(CONCAT(first_name,' '),last_name) from employees;

-- SKING@gmail.com
select CONCAT(email,'@gmail.com') from employees;


--UPPER(value);
select UPPER(first_name) from employees;


--LOWER(value);
select LOWER(first_name) from employees;


-- INITCAP(value) --> First Letter is UPPERCASE and rest of them will LOWERCASE
select INITCAP(email) from employees;

-- LENGTH(value);
select first_name,LENGTH(first_name) from employees;


/*

SUBSTR(columnName,beginningIndex,numberOfChar)
      - if beginning index 0 , it is treated as 1

 */
 -- Steven King --> S.K. --> Initials
select SUBSTR(first_name,0,1)||'.'||SUBSTR(last_name,0,1)||'.' from employees;

select SUBSTR(first_name,1,1)||'.'||SUBSTR(last_name,1,1)||'.' from employees;