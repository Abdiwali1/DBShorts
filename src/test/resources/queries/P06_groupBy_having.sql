-- GROUP BY --> Divides rows into small groups

select * from employees;

select count(*) from employees;

select job_id,count(*) from employees
group by job_id;

select job_id,max(salary) from employees
group by job_id;

select job_id,min(salary) from employees
group by job_id;

select job_id,count(*),max(salary),min(salary),sum(salary),avg(salary) from employees
group by job_id;

-- HAVING --> It will work after group by
select job_id,count(*),max(salary),min(salary),sum(salary),avg(salary) from employees
group by job_id
having count(*)>5;

select job_id,count(*),max(salary),min(salary),sum(salary),avg(salary) from employees
group by job_id
having avg(salary)>7000;

select job_id,count(*),max(salary),min(salary),sum(salary),avg(salary) from employees
group by job_id
having max(salary)>10000;



select * from EMPLOYEES;

