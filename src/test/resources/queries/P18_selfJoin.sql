select employee_id,first_name,last_name,manager_id from employees;


select workers.first_name,workers.last_name, managers.first_name,managers.last_name
from employees workers inner join employees managers
            on workers.manager_id=managers.employee_id;