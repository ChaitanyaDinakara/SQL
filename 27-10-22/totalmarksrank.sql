create table totalmarks(stu_id int primary key,stu_name nvarchar(20),marks int,sub nvarchar(30))

insert into totalmarks values(1,'Indira',60,'Biology')
insert into totalmarks values(2,'Indira',90,'Maths')
insert into totalmarks values(3,'Indira',100,'Chemistry')

insert into totalmarks values(4,'Preethi',80,'Biology')
insert into totalmarks values(5,'Preethi',100,'Maths')
insert into totalmarks values(6,'Preethi',50,'Chemistry')

insert into totalmarks values(7,'Anjali',98,'Biology')
insert into totalmarks values(8,'Anjali',80,'Maths')
insert into totalmarks values(9,'Anjali',45,'Chemistry')


insert into totalmarks values(10,'Harsh',99,'Biology')
insert into totalmarks values(11,'Harsh',84,'Maths')
insert into totalmarks values(12,'Harsh',67,'Chemistry')


insert into totalmarks values(24,'Punith',89,'Biology')
insert into totalmarks values(26,'Punith',45,'Maths')
insert into totalmarks values(27,'Punith',90,'Chemistry')


insert into totalmarks values(28,'Aditya',98,'Biology')
insert into totalmarks values(29,'Aditya',83,'Maths')
insert into totalmarks values(30,'Aditya',24,'Chemistry')


insert into totalmarks values(31,'Anuj',90,'Biology')
insert into totalmarks values(32,'Anuj',67,'Maths')
insert into totalmarks values(33,'Anuj',89,'Chemistry')


insert into totalmarks values(34,'AKash',34,'Biology')
insert into totalmarks values(35,'Akash',82,'Maths')
insert into totalmarks values(36,'Akash',90,'Chemistry')


insert into totalmarks values(37,'Keerthi',56,'Biology')
insert into totalmarks values(38,'Keerthi',60,'Maths')
insert into totalmarks values(39,'Keerthi',67,'Chemistry')


insert into totalmarks values(40,'Anoop',56,'Biology')
insert into totalmarks values(41,'Anoop',90,'Maths')
insert into totalmarks values(42,'Anoop',99,'Chemistry')

select * from totalmarks

--drop table totalmarks

 alter procedure p_1 as

declare @results table(name varchar(20),max_marks int)

insert into @results select stu_name,SUM(marks) as marks from totalmarks group by stu_name order by marks desc
select * from @results

exec p_1


