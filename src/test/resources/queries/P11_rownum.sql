/*
 ROWNUM

 - Limits the number of result displayed in the query result.
 - Only works with less than (<) and less then and equals (<=),
 - Does not work with greater than (>) and equals (=).


 */

select * from employees
where rownum<=5;

-- BAD PRACTICE DUE TO EXECUTION ORDER
select * from employees
         where rownum<=7
order by salary desc;
/*
 EXECUTION ORDER
 - FROM    --> Choose table
 - WHERE   --> Filter
 - GROUP BY--> Aggregates data
 - HAVING  --> Filters aggregated data
 - SELECT  --> Returns Data
 - ORDER BY--> Sorts Data
 */


--Display all information from employees who is getting first 7 highest salary

   -- find me employees information in sorted manner based salary in desc
     select * from employees
     order by salary desc;

   -- use that table to apply rownum
     select * from (select * from employees
                    order by salary desc)
     where rownum<=7;


--Display all information from employees who is getting  seventh highest salary

    -- display 7th highest salary
    select min(salary) from (select distinct salary from employees
                    order by salary desc )
    where rownum<=7;

    -- who is getting 7th highest salary
    select * from employees
    where salary=(select min(salary) from (select distinct salary from employees
                                           order by salary desc )
                  where rownum<=7);


/*
    EXTRA INFORMATION
--Display all information from employees who is getting first 7 highest salary

    MYSQL - POSTGRESQL ---> LIMIT
        select * from employees
        order by salary desc
        limit 7;

    MSSQL ---> TOP

        select top 7 * from employees
        order by salary desc;

 */

