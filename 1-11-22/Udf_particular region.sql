CREATE TABLE sales_details(
s_id INT PRIMARY KEY,
s_name varchar(20),
amount BIGINT,
city varchar(20)
)
delete from sales_details

insert into sales_details values (11,'Ankitha',20000,'Delhi')
insert into sales_details values (12,'Keerthi',42000,'Delhi')
insert into sales_details values (13,'Ankush',33000,'Delhi')
insert into sales_details values (14,'Preeths',58000,'Delhi')


insert into sales_details values (1,'Kannan',11000,'Pune')
insert into sales_details values (7,'Vasudev',26000,'Pune')
insert into sales_details values (8,'Manisha',39000,'Pune')
insert into sales_details values (13,'Kishore',40000,'Pune')

insert into sales_details values (110,'Yash',80000,'Bangalore')
insert into sales_details values (111,'Sudeep',90000,'Bangalore')
insert into sales_details values (112,'Raksha',60000,'Bangalore')
insert into sales_details values (113,'Priya',39000,'Bangalore')

insert into sales_details values (104,'Akshaya',200000,'Chennai')
insert into sales_details values (105,'Ramya',300000,'Chennai')
insert into sales_details values (106,'Chaitanya',400000,'Chennai')
insert into sales_details values (107,'Priya',50000,'Chennai')

SELECT * FROM sales_details

CREATE OR ALTER FUNCTION sales_values(@value varchar(20))
RETURNS TABLE AS
RETURN
select city ,amount   from sales_detail group by city,amount having city = @value

--SELECT * FROM sales_values('Delhi')

CREATE OR ALTER FUNCTION maxVal(@city_name varchar(20))
RETURNS @ans TABLE (amount BIGINT) AS
BEGIN

DECLARE @res TABLE (city varchar(20),Amount BIGINT)
insert into @res SELECT * FROM sales_values(@city_name)

insert into @ans SELECT AVG(Amount) from @res

 return 

END

SELECT* from maxVal('Delhi')