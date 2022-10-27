create table cities(id int,city_name nvarchar(20))

insert into cities values(1,'Bangalore')
insert into cities values(14,'Pune')
insert into cities values(17,'Hyderabad')
insert into cities values(15,'Chennai')
insert into cities values(10,'Kochi')

select * from cities

select SUBSTRING(city_name,1,3) as first_three_letters
from cities
