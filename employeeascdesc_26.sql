create table emp(emp_id int primary key,emp_name nvarchar(30),dept_name nvarchar(30),salary int)

select * from emp

insert into emp values(1,'Punith','ECE',60000)
insert into emp values(12,'Srinath','CSE',80000)
insert into emp values(13,'David','Civil',25880)
insert into emp values(21,'Paxton','Sales',45800)
insert into emp values(81,'Alexa','Marketing',35697)
insert into emp values(10,'Robert','ECE',90000)
insert into emp values(14,'Anand','Cooking',25000)
insert into emp values(18,'Khole','ECE',45840)
insert into emp values(91,'KIm','Accounting',20000)

select emp_name,dept_name from emp
order by emp_name,dept_name desc

drop table emp