

select * from countries;

/*
 ORDER BY --> used for sorting result

 - AS A DEFAULT it will sort data in ASC (0-9,A-Z)
 - DESC will order data (0-9,Z-A)

 */

-- ASC
select * from countries
order by region_id;

select * from countries
order by region_id asc;


-- DESC
select * from countries
order by region_id desc;

-- Can we use in here where clause too ?
-- YES

 select * from countries
 where region_id=3
 order by country_name;
