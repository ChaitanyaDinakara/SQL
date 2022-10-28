create table yearstudents(stu_id int primary key,stu_name nvarchar(20),stu_age int,stu_sex nvarchar(10),course varchar(10),year_stu int)

insert into yearstudents values(1,'Priya',18,'F','ECE',1)
insert into yearstudents values(12,'Ankitha',20,'F','CSE',3)
insert into yearstudents values(13,'Akash',18,'M','Mech',1)
insert into yearstudents values(14,'Anand',18,'M','ECE',1)
insert into yearstudents values(15,'Kevin',20,'M','CSE',3)
insert into yearstudents values(16,'Arjun',21,'M','Civil',3)
insert into yearstudents values(17,'Preethi',18,'F','ECE',1)

select * from yearstudents

alter procedure p_2 @year int as

select * from students where year_stu = @year

exec p_1 @year =3

drop table yearstudents

