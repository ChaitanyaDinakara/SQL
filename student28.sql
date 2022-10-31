CREATE TABLE student(
s_id INT PRIMARY KEY,
s_name varchar(20),
Course_name varchar(50),
marks INT)

insert into student values(1,'Chaitanya','Phys',88)
insert into student values(12,'Chaitanya','Chem',79)
insert into student values(13,'Chaitanya','Maths',90)



insert into student values(121,'Priya','Phys',60)
insert into student values(121,'Priya','Chem',85)
insert into student values(121,'Priya','Maths',99)


insert into student values(102,'Kushal','Phys',78)
insert into student values(103,'Kushal','Chem',85)
insert into student values(105,'Kushal','Maths',90)


select* from student
drop table student


CREATE OR ALTER PROCEDURE p1 @t_mark INT AS 
BEGIN
SELECT s_name, SUM(marks) AS s_total from student group by s_name having  SUM(marks) <@t_mark
END

select* from student

CREATE OR ALTER PROCEDURE p2 @d_s_name varchar(20) AS
BEGIN
DECLARE @total_marks AS INT
SELECT  @total_marks= SUM(marks)  from student group by s_name having s_name = @d_s_name 



EXEC p1 @total_marks
END