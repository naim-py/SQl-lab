use university

/*
"SELECT" statement to retrieve data from the "instructor" table. 
It selects two columns - "dept_name" and the average salary for each department, 
which is calculated using the "AVG" function.

The "GROUP BY" clause is used to group the data by department name.
the average salary will be calculated separately for each department.
*/
select dept_name,AVG(salary) as avg_salary from instructor group by dept_name

---Having clause
select dept_name,AVG(salary) as avg_salary from instructor group by dept_name Having AVG(salary)>75000;

---order clause
select * from instructor order by salary desc,name asc;

/*create view
creates view create a virtual table which name is faculty
create view acta virtual table and je column gula assign krbo oigulai thakbe
*/
create view faculty as select ID,name,dept_name from instructor;
select * from faculty

---, Indexing & Procedure Clause
/*
keyword EXEC is used To execute the stored procedure, followed by the name of the stored procedure

*/
create procedure instruct_proc
as
begin
select name as authors_name from instructor where ID='10121'
end
exec instruct_proc

select * from instructor