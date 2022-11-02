
CREATE TABLE Events( 
event_id INT PRIMARY KEY,
Events_name varchar(30),
event_date date,
organizer  varchar(20),
loc varchar(50),
total_cost BIGINT
)

insert into Events values(1001,'Party','12-04-2022','Priya','Pune',15000)
insert into Events values(1002,'conference','12-04-2022','Kishore','Bangalore',40000)
insert into Events values(1003,'seminar','05-04-2022','Chaitanya','Hyderabad',90000)
insert into Events values(1004,'Anniversay','06-04-2022','Priya','Mumbai',30000)

insert into Events values(1005,'Anniversary','11-04-2022','Mahesh','Pune',33000)
insert into Events values(1006,'conference','12-04-2022','Kiran','Chennai',21000)
insert into Events values(1007,'seminar','05-04-2022','Hrithik','Mumbai',90000)
insert into Events values(1008,'party','12-04-2022','Ashok','Pune',50000)


select * from Events


CREATE OR ALTER PROCEDURE disp_events @e_daten date AS
BEGIN
SELECT * from Events where event_date = @e_daten
END
EXEC disp_events '12-04-2022'


CREATE OR ALTER FUNCTION disp_Event()
RETURNS TABLE AS

RETURN 
SELECT count(Events_name) AS numofevents  from Events where total_cost = (select MAX(total_cost) from Events)


select * from disp_Event()



CREATE OR ALTER PROCEDURE display_events @location varchar(50) AS
BEGIN
SELECT * from Events where loc = @location
END
EXEC display_events 'Pune'