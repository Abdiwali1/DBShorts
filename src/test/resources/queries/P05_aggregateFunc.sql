--AGGREGATE FUNCTIONS

-- count() -> gives count of results

   select count(*) from employees;

   select count(*) from employees
   where job_id ='IT_PROG';

    select count(*) from countries
    where country_name like 'B%';

-- max()   -> gives max value of column

    select * from employees;
    select max(salary) from employees;

-- min()   -> gives min value of column
    select min(salary) from employees;

-- sum()   -> gives total value of column
    select * from employees;
    select sum(salary) from employees;

    -- Total salary for IT_PROG
    select sum(salary) from employees
    where job_id='IT_PROG';


-- avg()   -> gives avg value of column
    select avg(salary) from employees;


-- ROUND is NOT an AGGREGATE FUNC
-- round() -> Gives rounded version of number

   select round(avg(salary)) from employees;  -- if we dont have second parameter to round it will give integer

   select round(avg(salary),1) from employees; -- Gives  1 decimal

   select round(avg(salary),2) from employees; -- Gives  2 decimal

   select round(avg(salary),3) from employees; -- Gives  3 decimal



   select * from EMPLOYEES