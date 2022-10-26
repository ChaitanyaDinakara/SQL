create table telephone_directory(id int primary key,name nvarchar(30),tel_num bigint unique,address nvarchar(30),profession nvarchar(25))

insert into telephone_directory values(1,'David',9857845785,'Chennai,India','Engineer')
insert into telephone_directory values(11,'Kevin',897456855,'Bangalore,India','Lawyer')
insert into telephone_directory values(15,'Manish',857945621,'Pune,India','Creator')
insert into telephone_directory values(18,'Mahesh',	875469854,'Chennai,India','student')
insert into telephone_directory values(14,'Krithi',9988754568,'Mumbai,India','Engineer')
insert into telephone_directory values(11,'Prakash',8745932587,'Chennai,India','Lawyer')
insert into telephone_directory values(19,'Arun',4587596321,'Pune,India','Engineer')
insert into telephone_directory values(10,'Pranav',897969080,'Bangalore,India','Teacher')
insert into telephone_directory values(13,'Keerthi',4567864328,'Hyderabad,India','student')
insert into telephone_directory values(10,'Aditya',9008745698,'Chennai,India','Lawyer')
insert into telephone_directory values(13,'Manoj',5012478965,'Pune,India','doctor')
insert into telephone_directory values(91,'Kiran',458793214,'Chennai,India','student')
insert into telephone_directory values(41,'Ajith',7985642315,'Mumbai,India','student')
insert into telephone_directory values(31,'Varshini',1245871264,'Chennai,India','Engineer')
insert into telephone_directory values(21,'Manav',42158796544,'Kochi,India','Doctor')
insert into telephone_directory values(81,'Chaitanya',4875932145,'Kerala,India','Fireworker')
insert into telephone_directory values(81,'Arjun',98875548654,'Mumbai,India','student')
insert into telephone_directory values(51,'Brunda',5478963214,'Chennai,India','Lawyer')
insert into telephone_directory values(71,'David',12458796555,'Bangalore,India','student')
insert into telephone_directory values(61,'Mrunal',78542135688,'Hyderabad,India','Doctor')

select * from telephone_directory

select * from telephone_directory
where profession='student'

select * from telephone_directory
where profession Not in ('student')