------------------------------------------------------------------
----- SQL is structured query language used to 
----- query data from tables stored in database
------------------------------------------------------------------
----- Below is the syntax for writing queries --------------------
-- select
-- from
-- where
-- group by
-- having
-- order by
------------------------------------------------------------------


---------------- selection ---------------- 
-------------------------------------------

--To select everything from the table
select * from Employee;

--To select only 10 sample records from the table
select * from Employee limit 10;

---------------- Projection ---------------- 
--------------------------------------------

-- To select only specific columns from the table
select e_id, e_name, e_city
from Employee;


-- To select e_name and e_sal from the table
select e_name, e_sal
from Employee;

---------------- Order By (Sorting) ------------
------------------------------------------------

-- To sort the employees on the basis of salary
select *
from Employee
order by e_sal;

-- To sort the employees in the descending order of salary
select * 
from Employee
order by e_sal desc;

-- To get the Employee names in the order of their name
select *
from Employee
order by e_name;


----- Distinct (Unique, No Duplication) ------------
----------------------------------------------------

-- To get the unique names from Employee table
select distinct e_name
from Employee;


---------------- where (Filter) ---------------- 
-------- To filter some records from the table
------------------------------------------------

-- To select all the details from the table whose sal is greater than 5000
select *
from Employee
where e_sal > 5000;

-- To select only Empname from the table whose sal is greater than 5000
select e_name
from Employee
where e_sal > 5000;

-- To select Employees who was born in after 1995
select *
from Employee
where e_dob > 1995;

-- To select Employees from the table who are from Denver
select *
from Employee
where e_city = 'Denver';

---------------- AND/OR Keywords ---------------- 
-------- AND means everything
-------- OR means either or 
-------------------------------------------------

-- Get the names of managers living in New York/Denver
select e_name
from Employee
where e_designation = 'Manager' and (e_city = 'New York' or e_city = 'Denver');

-- Get the names of managers not living in New York/Denver
select e_name
from Employee
where e_designation = 'Manager' and (e_city != 'New York' and e_city != 'Denver');


-- Get the employees who are from dept 1 and 2
select *
from employee
where e_dept = 1 or e_dept = 2;

-- Get the employees who salaries are in range of 5000-8500
select e_name, e_sal
from Employee
where e_sal>=5000 and e_sal<=8500;

select e_name, e_sal
from Employee
where e_sal between 5000 and 8500;


---------------- IN/NOT IN Keywords -------------
-------------------------------------------------

-- Get the names of managers living in New York/Denver
select e_name
from Employee
where e_designation = 'Manager' and e_city in ('New York', 'Denver');

-- Get the names of managers not living in New York/Denver
select e_name
from Employee
where e_designation = 'Manager' and e_city not in ('New York', 'Denver');


