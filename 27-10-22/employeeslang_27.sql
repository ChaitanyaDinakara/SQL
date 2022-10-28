create table Employees (emp_id int primary key,emp_name nvarchar(30),emp_lang nvarchar(20),base_loc nvarchar(20))

insert into Employees values(1234,'Varshini','c#','Bangalore')
insert into Employees values(4456,'Manesha','java','Chennai')
insert into Employees values(5678,'Preethi','c#','Bangalore')
insert into Employees values(6234,'Hassini','c#','Bangalore')
insert into Employees values(1734,'Indira','python','Bangalore')
insert into Employees values(1284,'Harsh','c#','Bangalore')

select * from Employees

create procedure proc_1  as

select * from Employees where emp_lang = 'c#' and base_loc='Bangalore'

exec proc_1 
