/*

   SUBQUERY --> INNER QUERY --> NESTED QUERY

   -> A subquery allows us to use multiple SELECT statements, where we basically have a query within a query.

*/
--who is getting highest salary ?
select * from employees
order by salary desc;

-- find max salary from employees
select max(salary) from employees;

-- who is getting this max salary
select * from employees
where salary =24000;     -- is hardcoded

-- DYNAMICALLY
select * from employees
where salary =(select max(salary) from employees);


------------------------
select * from employees;
select * from departments;

-- Get me all employees firstname,lastname who is working currently in IT DEPARTMENT

-- find IT department department_id  --> 60
    select department_id from departments
    where department_name='IT';

-- Get me all employees firstname,lastname who is working currently in IT DEPARTMENT
select first_name,last_name from employees
where department_id=(select department_id from departments
                     where department_name='IT');



-- Get me all employees firstname,lastname who is working currently in Executive DEPARTMENT
select first_name,last_name from employees
where department_id=(select department_id from departments
                     where department_name='Executive');

