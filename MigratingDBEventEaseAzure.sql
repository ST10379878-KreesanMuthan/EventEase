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
VALUES ('Varsity Collage','1000','https://www.varsitycollege.co.za/media/u3qbzycz/dsc_2891.jpg?rmode=max&width=630&height=419'),
('Mall of Africa','1500','https://www.atterbury.co.za/wp-content/uploads/2016/03/DJI_0083-1.jpg')

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