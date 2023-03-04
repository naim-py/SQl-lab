use Naim

---create table
create table department(
dept_name varchar(20),
building varchar(15),
budget numeric(15,2),
primary key(dept_name))

---Insert values
insert into department values('ICE','Eng_Facul',90000)
insert into department values('CSE','Eng_Facul',80000)
insert into department values('EEE','Eng_Facul',75000)
insert into department values('English','Arts',2000)
insert into department values('Bangla','Arts',2000)
insert into department values('Zoology','Biological',9000)

---show the table
select * from department;

---delete one tuple
delete from department where dept_name='CSE';

---update
update department set budget=budget*1.05 where budget<75000;