create table names(firstname nvarchar(25),lastname nvarchar(30))

select * from names

insert into names values('Chaitanya','Dinakara')
insert into names values('Gnana','Priya')
insert into names values('Preethi','Ravikumar')
insert into names values('ili','Sandhya')
insert into names values('Tejas','Dinakara')
 
select CONCAT(firstname,' ',lastname) "Fullname"
from names
