CREATE TABLE IF NOT EXISTS Employees (
	id_empl INT PRIMARY KEY AUTO_INCREMENT,
	name_empl varchar(100) NOT NULL,
	surname varchar(100) NOT NULL
);

INSERT INTO Employees (name_empl, surname)
VALUES (
'Angela',
'Bates'
);

update Employees set id_empl = 1 where name_empl = 'Angela';

insert into Employees values (2, 'Cyrus', 'Dane');
insert into Employees values (3, 'Emil', 'Figgins');
insert into Employees values (4, 'George', 'Hills');
insert into Employees values (5, 'Ivan', 'Jade');

CREATE TABLE IF NOT EXISTS Rooms (
	id_room INT PRIMARY KEY AUTO_INCREMENT,
	name_room varchar(100) NOT NULL UNIQUE,
	floor varchar(15) NOT NULL
);

insert into Rooms values (1, 'red', 'ground');
insert into Rooms values (2, 'orange', 'first');
insert into Rooms values (3, 'yellow', 'second');
insert into Rooms values (4, 'green', 'third');
insert into Rooms values (5, 'blue', 'fourth');


CREATE TABLE EmployeeRooms (
	id_empl_seat INT NOT NULL,
	id_room_empl NOT NULL
);

insert into EmployeeRooms values (1, 2);


select distinct * from EmployeeRooms
join Rooms on EmployeeRooms.id_room_empl = Rooms.id_room
where Rooms.name_room = 'orange';

select distinct Rooms.name_room, Employees.name_empl from EmployeeRooms
join Rooms on EmployeeRooms.id_room_empl = Rooms.id_room
join Employees on EmployeeRooms.id_empl_seat = Employees.id_empl
where Rooms.name_room = 'orange';

select distinct Rooms.name_room, Employees.name_empl from EmployeeRooms
join Rooms on EmployeeRooms.id_room_empl = Rooms.id_room
join Employees on EmployeeRooms.id_empl_seat = Employees.id_empl;

select distinct Rooms.name_room, Employees.name_empl from EmployeeRooms
join Rooms on EmployeeRooms.id_room_empl = Rooms.id_room
join Employees on EmployeeRooms.id_empl_seat = Employees.id_empl
order by Employees.name_empl desc;

select distinct Rooms.name_room, Employees.name from EmployeeRooms
join Rooms on EmployeeRooms.id_room_empl = Rooms.id_room
join Employees on EmployeeRooms.id_empl_seat = Employees.id
order by Employees.name desc
limit 1;
