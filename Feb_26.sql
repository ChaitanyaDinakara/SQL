
create table stu(id int, student_name nvarchar(30), course_name nvarchar(30), doj date);


insert into students values(1,'Priya','Physics','9/24/22')
insert into students values(2,'Preethi','Chemistry','1/7/22')
insert into students values(10,'Hamza','Biology','1/8/22')
insert into students values(12,'Vinod','Physics','9/12/22')
insert into students values(13,'Manoj','Geography','4/7/22')
insert into students values(18,'Priya','Physics','1/9/22')
insert into students values(19,'Indira','Maths','1/9/22')
insert into students values(20,'Charan','History','7/9/22')
insert into students values(31,'David','Zoology','6/5/22')
insert into students values(51,'Varshini','Physics','8/8/22')
insert into students values(61,'Priya','History','9/9/22')
insert into students values(71,'Chaithu','Civics','21/3/22')

select * from  students

select student_name,course_name
from students 
where doj > '2/23/22'