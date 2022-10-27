create table saleman(order_id int primary key,saleman_id int,amount int,sale_date date)

insert into saleman values(1,3245,30000,'10/13/2022')
insert into saleman values(12,3246,60000,'1/17/2022')
insert into saleman values(17,3247,90000,'2/13/2022')
insert into saleman values(14,3248,70000,'3/13/2022')
insert into saleman values(10,3244,50000,'4/13/2022')
insert into saleman values(13,3243,50000,'5/13/2022')
insert into saleman values(15,3242,40000,'6/13/2022')
insert into saleman values(13,3241,80000,'7/13/2022')
insert into saleman values(18,3249,40000,'3/13/2022')
insert into saleman values(19,3240,20000,'10/13/2022')

select * from saleman

select saleman_id,amount
from saleman
where sale_date > '1/17/2022'
and amount =any(select max(amount) from saleman group by saleman_id)
