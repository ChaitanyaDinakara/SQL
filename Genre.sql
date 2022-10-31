CREATE TABLE Genre(
movies_id INT PRIMARY KEY,
Horror_movies varchar(50),
Kids_movies varchar(50)
)

insert into Genre values(1,'Conguring','Moana')
insert into Genre values(12,'The hunt','secret life of pets')
insert into Genre values(13,'Insidious','Frozen')
insert into Genre values(14,'strange house','Zootopia')
insert into Genre values(15,'Killer','Chocalate factory')
insert into Genre values(16,'IT','Toy Story')
insert into Genre values(17,'call','Wall-E')
insert into Genre values(18,'lost kid','Onward')
insert into Genre values(19,'The Stuff','Inside Out')

select* from Genre

CREATE FUNCTION movies()
RETURNS TABLE AS
RETURN
select Horror_movies,Kids_movies from Genre