create table DSU (id int,name_person nvarchar(30),course nvarchar(40),age int);

insert into DSU values(2,'Varshini','Mathematics',21)
insert into DSU values(23,'Manesha','Physics',24)
insert into DSU values(22,'Priya','Chemistry',25)
insert into DSU values(25,'Preethi','Biology',18)
insert into DSU values(5,'Hamza','Mathematics',17)
insert into DSU values(6,'Kevin','History',20)
insert into DSU values(7,'Harvard','Mathematics',21)

select * from DSU

create table BPS(id int,name_person nvarchar(30),course nvarchar(40),age int);

insert into BPS values(2,'Tejas','Mathematics',28)
insert into BPS values(23,'Dinakar','Physics',21)
insert into BPS values(23,'Brunda','Chemistry',27)
insert into BPS values(29,'Kavi','Biology',29)
insert into BPS values(25,'Komal','Mathematics',30)
insert into BPS values(5,'Aishwarya','History',17)
insert into BPS values(6,'Akansha','Mathematics',18)

select * from BPS

select name_person,age,course from DSU
where age > 21
and course ='Mathematics'
union
select name_person,age,course from BPS
where age > 21
and course ='Mathematics'