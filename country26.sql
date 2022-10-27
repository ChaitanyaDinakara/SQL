create table country(country_id int primary key,country_name nvarchar(30))

insert into country values (121,'USA')
insert into country values (675,'Australia')

create table city(name nvarchar(20),city_name nvarchar(20),country_id int,foreign key(country_id) references country(country_id))

select *from country
select * from city

--drop table people

--drop table city

insert into city values('Harsh','Bangalore',456)
insert into city values('Manish','Chennai',324)
insert into city values('Harini','Pune',567)
insert into city values('Mahesh','Mumbai',897)
insert into city values('Kevin','Hyderabad',908)
insert into city values('Pranav','Kochi',786)

select cc.name,c.country_name
from country c join city cc on c.country_id =cc.country_id
where country_name='USA'