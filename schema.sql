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
