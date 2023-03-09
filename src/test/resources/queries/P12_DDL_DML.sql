select * from employees;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );


    NOTE -> Constraints are NOT mandatory
*/

 create table students(
     studentid Integer PRIMARY KEY,
     firstname varchar(50) NOT NULL ,
     email varchar(50) UNIQUE ,
     age Integer CHECK ( age>18 ),
     status varchar(50) DEFAULT 'ACTIVE'

 );

select * from students;


/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/
select * from students;

insert into students (studentid,firstname,email,age) values (1,'Mike','mike@gmail.com',19);

insert into students (studentid,firstname,email,age,status) values (2,'Yulia','yulia@gmail.com',20,'ACTIVE');

insert into students (studentid,firstname,email,age) values (3,'John','john@gmail.com',20);

insert into students (studentid,firstname,email,age) values (4,'Bryan','bryan@gmail.com',30);

-- to save changes in database we need to use commit or commit work ;
commit;




/*
UPDATE table_name
SET column1 = value1,
    column2 = value2 , …
WHERE condition;
*/
update students
set status='ACTIVE';

select * from students;

update students
set status='INACTIVE'
where studentid=1;

commit;

/*
DELETE FROM table_name
WHERE condition;
*/

delete from students
where studentid=1;

select * from students;


-- ALTER --> alter table students

    -- ADD NEW COLUMN    --> add columnName type
    alter table students add gender varchar(20);

    -- update John gender as Male
    update students
    set gender='Male'
    where studentid=3;

select * from students;

    -- RENAME THE COLUMN --> rename column to newColumn
    alter table students rename column email to emailAddress;
    -- DROP COLUMN       --> drop column columnName
    alter table students drop column gender;
    -- RENAME TO         --> rename to newTable
    alter table students rename to friends;

    select * from friends;

commit;

-- TRUNCATE   --> remove the table content
    -- truncate table tableName
    truncate table friends;

-- DROP --> will remove table with content
    -- drop table tableName
    drop table friends;


