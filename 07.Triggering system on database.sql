/*
Triggers are typically used to enforce data integrity and maintain consistency in a database. 
For example, a trigger can be used to ensure that every time a new record is inserted into a table, 
a corresponding record is also inserted into another table. Alternatively, 
a trigger can be used to prevent certain types of data from being inserted or updated in a table.

je table e triggering create korbo oi table er maddome onno table er information update kora zay
*/
use university
GO     ---the GO command is a batch separator that is used to group SQL statements into batches.

---craeate table customer2
create table customer1(
cusl_id char(6) primary key check (cusl_id like '[CS][0-9][0-9][0-9][0-9][0-9]'),  --- it starts with either 'C' or 'S' followed by five numeric digits.
cusl_fname char(15) not null,
cusl_lname varchar(15),
cusl_address TEXT,
cusl_telno CHAR (12) CHECK (cusl_telno LIKE '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
cusl_city CHAR (17) DEFAULT 'Chapai',
sales_amnt MONEY CHECK (sales_amnt>=0),
proc_amnt MONEY CHECK (proc_amnt>=0)
);
---insert table customer1
insert into customer1
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('C00001','SHAHANUR','RAHMAN','221/B Dhanmondi','017-00000000','Dhaka',0,0);

---customer1 table show
select * from customer1

---customer1 table value delete
delete from customer1

---table delete
drop table customer1


----create items table
create table items(
item_id CHAR (6) PRIMARY KEY CHECK (item_id LIKE '[P][0-9][0-9][0-9][0-9][0-9]'),
item_name CHAR(12) NOT NULL,
item_category VARCHAR (10),
item_price FLOAT(12) check(item_price>=0),
item_qoh INT CHECK (item_qoh>=0),
item_last_sold DATE DEFAULT getdate(),
);

--Items Table Inserting Start
insert into items
(item_id,item_name,item_category,item_price,item_qoh) values
('P01235','Naim','student','567.8','20');
insert into items
(item_id,item_name,item_category,item_price,item_qoh) VALUES
('P00002','SUHAN','STUDENT','5241.2','45');

--Items Table Display Start
SELECT * from items;

--Items Table value Delete Start
delete from Items;

--Item Table Delete Start
DROP TABLE Items;

--Transactions Table Creating Start
CREATE TABLE Transactions
(
tran_id CHAR (10) PRIMARY KEY CHECK (tran_id LIKE '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
item_id CHAR(6) FOREIGN KEY(item_id) REFERENCES items(item_id),
cusl_id CHAR (6) FOREIGN KEY(cusl_id) REFERENCES customer1(cusl_id),
tran_type CHAR(1),
tran_quantity INT CHECK (tran_quantity>=0),
tran_date DATETIME DEFAULT getdate()
);

--Transactions Table Inserting Start
insert into Transactions
(tran_id,item_id,cusl_id,tran_type,tran_quantity) VALUES
('T000052149','P00005','C00001','S',12);

insert into Transactions
(tran_id,item_id,cusl_id,tran_type,tran_quantity) VALUES
('T000052142','P00002','C00001','O',12);
--Transactions Table Display Start
SELECT * from Transactions;

--Transactions Table value Delete Start
delete from Transactions;
--Transactions Table Delete Start
DROP TABLE Transactions;


--Triggering start
CREATE TRIGGER trg_update_item ON Transactions FOR INSERT 
AS
BEGIN
DECLARE @item_id char(6), @tranamount int, @tran_type char(1)
SELECT @item_id=item_id, @tranamount=tran_quantity, @tran_type=tran_type FROM INSERTED
IF (@tran_type ='S')
 UPDATE items SET item_qoh=item_qoh- @tranamount WHERE item_id=@item_id
ELSE
UPDATE items SET item_qoh=item_qoh+ @tranamount WHERE item_id=@item_id
END

--To drop trigger have to use below sql command
drop trigger trg_update_item


select * from Transactions;
select * from items;