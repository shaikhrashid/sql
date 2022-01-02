---------------- Aggregations ------------------ 
----------- sum. min. max, avg, count
------------------------------------------------

-- To get the sum of salary paid in the company
select sum(e_sal)
from Employee;

-- To get the avg salary paid to the Employees
select avg(e_sal)
from Employee;

-- To get the min salary paid to the Employee
select min(e_sal)
from Employee;

-- To get the max salary paid to the Employee
select max(e_sal)
from Employee;

-- To get the count of Employees we have in the Company
select count(e_id)
from Employee;


---------------- Grouped Aggregations ----------
--- sum. min. max, avg, count for every group
------------------------------------------------

-- To get Dept wise max salaries we pay to Employees
select e_dept, max(e_sal)
from Employee
group by e_dept;

-- To get Dept wise avg salaries we pay to Employees
select e_dept, avg(e_sal)
from Employee
group by e_dept;

-- To get Employees of which city we are paying more
select e_city, sum(e_sal)
from Employee
group by e_dept;


---------------- having (Filter) -----------------------
----  To filter some records from the table for groups
--------------------------------------------------------

-- To get the cities where total salary paid is more than 7500000
select e_city, sum(e_sal)
from Employee
group by e_city
having sum(e_sal) > 7500000;

-- Get the departments in which college is paying more than or equal to  50lacs total amount
select dept, sum(e_sal)
from college
group by dept
having sum(e_sal) >= 500000;