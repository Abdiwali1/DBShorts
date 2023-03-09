select * from developers;

select * from testers;


/*
 UNION
    - will remove DUPLICATE ROWS
    - will sort data in asc order

 */

select * from developers
union
select * from testers;

select names from developers
union
select names from testers;


/*
 UNION ALL
    - will NOT remove DUPLICATE ROWS
    - will NOT sort data

 */

select names from developers
union all
select names from testers;

-- MINUS
-- Returns records from first query that is not present in second query.
-- Order of the queries are important

select names from developers
minus
select names from testers;

select names from testers
minus
select names from developers;

--INTERSECT
select names from testers
intersect
select names from developers;


