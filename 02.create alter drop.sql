use Naim
create database university
use university
create table instructor(
ID varchar(10),
name varchar(20)not null,
dept_name varchar(15),
salary numeric(8,2),
primary key(ID)
)
---insert values
insert into instructor values(10101,'Anwar','Physics',68000)
insert into instructor values(10121,'Rakib','Music',85000)
insert into instructor values(10333,'Salam','Biology',90000)
insert into instructor values(14544,'Kamal','Chemistry',100000)
insert into instructor values(15353,'Samad','CSE',95000)
insert into instructor values(12453,'Rafiq','ICE',75000)

---show table
select * from instructor

---alter table
alter table instructor add course_credit varchar(15)
insert into instructor values(127,'Naim','ICE',75000,'NAN',3.00)

---drop table
drop table instructor
