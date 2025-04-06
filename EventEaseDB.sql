-- DATABASE CREATION SECTION
USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'EventEaseDB')
DROP DATABASE EventEaseDB
CREATE DATABASE EventEaseDB
USE EventEaseDB

CREATE TABLE Venue(
VenueID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
VenueName VARCHAR(50) NOT NULL,
Capacity INT NOT NULL,
ImageURL VARCHAR(250)
);

CREATE TABLE [Event](
EventID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
VenueID INT FOREIGN KEY REFERENCES [Venue](VenueID),
EventName VARCHAR(50) NOT NULL,
EventDate VARCHAR(20) NOT NULL,
[Description] VARCHAR(100) NOT NULL
);

CREATE TABLE Booking(
BookingID  INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
VenueID INT FOREIGN KEY REFERENCES [Venue](VenueID),
EventID INT FOREIGN KEY REFERENCES [Event](EventID),
BookingDate VARCHAR(20) NOT NULL
);

--/-- TABLE ALTERATION SECTION

-- TABLE INSERTION SECTION
INSERT INTO Venue(VenueName,Capacity,ImageURL)
VALUES ('Varsity Collage','1000','https://cdn-9.motorsport.com/images/mgl/0ZR74Db0/s800/marc-marquez-ducati-team.jpg'),
('Mall of Africa','1500','https://cdn-9.motorsport.com/images/mgl/0ZR74Db0/s800/marc-marquez-ducati-team.jpg')

INSERT INTO [Event](VenueID,EventName,EventDate,[Description])
VALUES (1,'Hackothon','12 February 2025','IT competition for all degree years.'),
(1,'OWeek','1 March 2025','Get to know your campus.')


INSERT INTO Booking(VenueID,EventID,BookingDate)
VALUES (1,2,'4 February 2025'),
(2,2,'11 March 2025')

-- TABLE MANIPULATION SECTION
SELECT * FROM Venue
SELECT * FROM [Event]
SELECT * FROM Booking
-- STORED PROCEDURES SECTION