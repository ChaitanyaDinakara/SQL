create table customers(cust_id int primary key, name nvarchar(30),address nvarchar(20),tel bigint,email nvarchar(30));

insert into customers values(1,'Harish','Chennai,India',8945678899,'harish@gmail.com')
insert into customers values(15,'Pranav','Hyderabad,India',985475666,'Pranav@gmail.com')
insert into customers values(16,'Prasanthi','Bangalore,India',875468568,'Prashanti@gmail.com')
insert into customers values(18,'Indira','Pune,India',9758462555,'Indira@gmail.com')
insert into customers values(19,'Vinu','Mumbai,India',587564821,'Mumbai@gmail.com')

select * from customers

drop table customers

create table items(item_id int primary key,name nvarchar(30),price int)

insert into items values(23,'pulav',233)
insert into items values(45,'Butter Naan',40)
insert into items values(35,'Chappathi',35)
insert into items values(46,'Dal',105)
insert into items values(8,'pani puri',50)

select * from items

drop table items

create table orders(order_id int primary key,customer_id int, date_time datetime,foreign key(customer_id) references customers(cust_id))

insert into orders values(1,2,'2022-07-24 12:20:33')
insert into orders values(13,3,'2022-09-23 13:10:33')
insert into orders values(3,4,'2022-06-27 14:20:38')
insert into orders values(1,2,'2022-09-25 17:16:33')
insert into orders values(1,2,'2022-19-19 19:34:33')

select * from orders

drop table orders

create table order_item(order_item_id int primary key,order_id int,item_id int,product_quantity int,foreign key(item_id) references items(item_id),foreign key(order_id) references orders(order_id))

insert into order_item values (10,11,23,1)
insert into order_item values (11,15,4,5)
insert into order_item values (16,19,8,7)
insert into order_item values (11,16,41,56)
insert into order_item values (14,18,46,54)

select * from order_item