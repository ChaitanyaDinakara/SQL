create table student(stu_id int primary key,name nvarchar(25))

create table courses(course_id int primary key,course_name nvarchar(25))

create table marks(student_id int,course_id int,marks int,foreign key(student_id) references student(stu_id),foreign key(course_id) references courses (course_id))

insert into student values(1,'Indira')
insert into student values(3,'Priya')
insert into student values(6,'Preethi')
insert into student values(8,'Harish')
insert into student values(9,'David')

insert into courses values(34,'Physics')
insert into courses values(41,'Maths')
insert into courses values(89,'Geography')
insert into courses values(13,'Biology')
insert into courses values(14,'Chemistry')

insert into marks values(1,34,98)
insert into marks values(8,41,100)
insert into marks values(9,89,99)
insert into marks values(3,34,89)
insert into marks values(6,13,78)
insert into marks values(3,89,45)
insert into marks values(9,41,88)
insert into marks values(3,34,34)
insert into marks values(6,14,90)
insert into marks values(8,41,66)
insert into marks values(3,13,78)
insert into marks values(8,14,81)
insert into marks values(1,34,98)

select * from marks

select course_id,max(marks) as max_marks
from marks
group by course_id
order by course_id;