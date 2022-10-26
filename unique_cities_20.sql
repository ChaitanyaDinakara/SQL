create table employee(emp_id int primary key,emp_name nvarchar(30),city nvarchar(30))



insert into employee values(10,'David','Hyderabad')
insert into employee values(11,'Kevin','Mumbai')
insert into employee values(12,'Paxton','Bangalore')
insert into employee values(13,'Devi','Chennai')
insert into employee values(14,'Alexa','Kochi')
insert into employee values(15,'Indira','Hyderabad')
insert into employee values(16,'Preethi','Bangalore')
insert into employee values(17,'Manoj','Mumbai')
insert into employee values(18,'Preeth','Hyderabad')
insert into employee values(19,'Priya','Pune')
insert into employee values(20,'Harvard','Hyderabad')


select * from employee

select distinct city from employee