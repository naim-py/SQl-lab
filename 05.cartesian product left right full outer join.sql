use university
select * from instructor
select * from department

/*
Cartesian product is used to combine two or more tables together 
by creating all possible combinations of the rows between them.
The Cartesian product is achieved by using the CROSS JOIN operator in SQL. 
When two tables are joined using the CROSS JOIN operator, 
*/
select building,department.dept_name,salary from department,instructor where department.dept_name=instructor.dept_name
---where por jekhane uvoi table ar department same hbe,oigulai show krbe

/*
NATURAL JOIN operator in SQL is used to combine two or more tables based 
on the columns that have the same name and data type. When you use the NATURAL 
JOIN operator, the resulting table will only contain one column for each of 
the matching column names.
*/
---natural join or join operation
select building,salary from department join instructor on department.dept_name=instructor.dept_name;

/* left outer join
all the rows from the left table are included in the result set, along with any 
matching rows from the right table. If there is no match for a row in the left table, 
the result set will still include that row, but with NULL values for any columns in the right table.

example, table1 is the left table, and table2 is the right table. The ON keyword 
specifies the columns used to join the tables. The result set will include all the 
rows from table1 and any matching rows from table2. If there is no match, the columns 
from table2 will have NULL values
*/
select * from department
select * from instructor
select * from department left outer join instructor on department.dept_name=instructor.dept_name;

/*right outer join
In a right outer join, all the rows from the right table are included in the result set, 
along with any matching rows from the left table. If there is no match for a row in the
right table, the result set will still include that row, but with NULL values for any 
columns in the left table.

example, table1 is the left table, and table2 is the right table. The ON keyword 
specifies the columns used to join the tables. The result set will include all the rows 
from table2 and any matching rows from table1. If there is no match, the columns from 
table1 will have NULL values.
*/
select * from department
select * from instructor
select * from instructor right outer join department on department.dept_name=instructor.dept_name;

/*full outer join
In a full outer join, all the rows from both tables are included in the result set, 
regardless of whether there is a matching row in the other table or not. If there is 
no match for a row in either table, the result set will still include that row, but 
with NULL values for any columns in the other table.

In this example, table1 and table2 are the two tables being joined, and the ON keyword 
specifies the columns used to join the tables. The result set will include all the rows 
from both tables, with matching rows from each table being combined into a single row. 
If there is no match for a row in either table, the columns from the other table will 
have NULL values.
*/

select * from instructor full outer join department on department.dept_name=instructor.dept_name;

