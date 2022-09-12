CREATE TABLE IF NOT EXISTS `Patient` (
  `PatientId` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Birthdate` DATETIME NOT NULL
  );
  
 CREATE TABLE IF NOT EXISTS `Doctor` (
   `DoctorId` int primary key auto_increment NOT NULL,
   `Name` varchar(255) NOT NULL,
   `Field` varchar(255) NOT NULL
   );
   
 CREATE TABLE IF NOT EXISTS `Appointment` (
   `Date` DATETIME NOT NULL,
   `DoctorId` int NOT NULL,
   `PatientId` int NOT NULL
   );
   
 INSERT INTO `Doctor` (`Name`, `Field`) VALUES
   ('Albert Bole', 'Dentist'),
   ('Cara Darcy', 'Orthoped'),
   ('Elen Fitzgerald', 'Chirurg');
   
 INSERT INTO `Patient` (`Name`, `Address`, `Birthdate`) VALUES
 	  ('Gerta Hanes', 'Mirror Strasse 9', '1989-02-02 15:55:00'),
    ('Ivan Johanovic', 'Nona Street 12', '1966-06-06 06:06:00'),
    ('Karen Lane', 'Opal Avenue 103', '1948-07-12 10:09:00');
    
 INSERT INTO `Appointment` (`Date`, `DoctorId`, `PatientId`) VALUES
 	  ('2023-05-05 10:25:00', '1', '3'),
    ('2022-03-06 09:12:00', '2', '2'),
    ('2023-09-08 06:55:00', '3', '1');
 	
select * from `Patient` where `Address` = 'Opal Avenue 103';

select `Date` as `Appointment Date`, `Name` from Appointment a
JOIN Doctor d
ON a.DoctorId = d.DoctorId
WHERE d.Field = 'Orthoped'
