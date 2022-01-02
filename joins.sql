---------------- Joins --------------------------------
----  To extract data from more than one table
-------------------------------------------------------

---------------- Inner Join ---------------------------
-------------------------------------------------------

-- Get e_name names and their respective dept names
select t1.e_name, t2.dept_name, t1.e_city
from Employee t1 inner join Department t2
on t1.e_dept_id = t2.dept_id;


-- Get Emp details with their dept_name whos salaries are greater than 8000
select t1.e_name, t1.e_city, t1.e_sal, t2.dept_name
from Employee t1 inner join Department t2
on t1.e_dept_id = t2.dept_id
where t1.e_sal > 8000;


-- Get Emp details of New York with their dept_name whos salaries are greater than 8000
select t1.e_name, t1.e_city, t1.e_sal, t2.dept_name
from Employee t1 inner join Department t2
on t1.e_dept_id = t2.dept_id
where t1.e_sal > 8000
And t1.e_city = 'New York';


-- Get Emp details of New York with their dept_name whos salaries are in range of 5000-8000
select t1.e_id, t1.e_name, t1.e_city, t1.e_sal, t2.dept_name
from Employee t1 inner join Department t2
on t1.Edept = t2.dept_id
where t1.e_sal between 5000 and 8000
and t1.e_city = 'New York';


-- Get the Dept names and their dept head names
select t1.e_name, t2.dept_name
from Employee t1 inner join Department t2
on t1.e_id = t2.dept_head;



---------------- Left Join (Left Outer join) -------------------------
-- Extract details from left table even when there is no match
-- Assigns null for unmatched data
----------------------------------------------------------------------

-- Get e_name names and their respective dept names even if the dept is not aassigned yet
select t1.e_name, t2.dept_name
from Employee t1 left join Department t2
on t1.e_dept_id = t2.dept_id;



---------------- Full Outer join  -------------------------------------
-- Extract details from both the tables even when there is no match
-- Assigns null for unmatched data
-----------------------------------------------------------------------

-- Get e_name names and their respective dept names even if the dept is not aassigned yet or even if there is no employee in the dept
select t1.e_name, t2.dept_name
from Employee t1 full outer join Department t2
on t1.e_dept_id = t2.dept_id;