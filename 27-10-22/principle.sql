create table interest_ppl(Acc_no int primary key,prin_amt int,years int,rate int)

insert into interest_ppl values (1234,20000,4,5)
insert into interest_ppl values (2345,40000,7,5)
insert into interest_ppl values (8907,24000,6,5)
insert into interest_ppl values (9076,25000,8,5)
insert into interest_ppl values (4567,70000,5,5)
insert into interest_ppl values (9807,200000,6,5)

select * from interest_ppl

create function interest()
returns @res table(Acc_no int,interest_amt int) as
begin
insert into @res select Acc_no,(prin_amt*years*rate/100) from interest
return
end

select * from interest()
