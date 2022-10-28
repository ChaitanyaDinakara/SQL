create table time_zone(coun_code int primary key,coun_name nvarchar(20))

insert into time_zone values(91,'India')
insert into time_zone values(11,'USA')
insert into time_zone values(98,'Germany')
insert into time_zone values(12,'Switzerland')
insert into time_zone values(43,'Cannada')

select * from time_zone

create function timezone(@c_name varchar(20))
returns varchar(20) as
begin
declare @res as varchar(20)
if @c_name ='Cannada'
set @res = '5am'
else if @c_name ='India'
set @res= '7am'
else
set @res ='other time'
return @res
end

select dbo.timezone('India')