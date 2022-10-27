create table emp(emp_id int primary key,emp_name nvarchar(30),dept_name nvarchar(30),salary int)

select * from emp

insert into emp values(1,'Punith','ECE',60000)
insert into emp values(12,'Srinath','CSE',80000)
insert into emp values(13,'David','Civil',80000)
insert into emp values(21,'Paxton','Sales',60000)
insert into emp values(81,'Alexa','Marketing',50000)
insert into emp values(10,'Robert','ECE',50000)
insert into emp values(14,'Anand','Cooking',50000)
insert into emp values(18,'Khole','ECE',45840)
insert into emp values(91,'KIm','Accounting',50000)

select count(*),salary 
from emp
group by salary

select emp_name,salary
from emp
where salary = 50000

drop table emp