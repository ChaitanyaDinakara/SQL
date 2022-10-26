create table cricket_table(id int, name_person nvarchar(30) ,country_name nvarchar(30),primary key (country_name,name_person));


insert into cricket_table values(18,'Virat Kohli','India')
insert into cricket_table values(12,'Watson','Australia')
insert into cricket_table values(10,'Bravo',null)

drop table cricket_table
select * from cricket_table



