create database plane;
use plane;

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    Airline VARCHAR(50),
    Source VARCHAR(50),
    Destination VARCHAR(50),
    Departure DATETIME,
    Arrival DATETIME
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Seats (
    SeatID INT PRIMARY KEY,
    FlightID INT,
    SeatNumber VARCHAR(10),
    IsBooked BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    FlightID INT,
    CustomerID INT,
    SeatID INT,
    BookingDate DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SeatID) REFERENCES Seats(SeatID)
);

INSERT INTO Flights VALUES
(1, 'IndiGo', 'Mumbai', 'Delhi', '2025-07-20 08:00:00', '2025-07-20 10:00:00'),
(2, 'SpiceJet', 'Pune', 'Hyderabad', '2025-07-21 07:00:00', '2025-07-21 08:45:00'),
(3, 'Air India', 'Delhi', 'Goa', '2025-07-22 06:30:00', '2025-07-22 08:30:00'),
(4, 'Vistara', 'Mumbai', 'Bangalore', '2025-07-23 09:00:00', '2025-07-23 11:00:00'),
(5, 'Akasa Air', 'Kolkata', 'Chennai', '2025-07-24 10:00:00', '2025-07-24 12:15:00'),
(6, 'IndiGo', 'Chennai', 'Delhi', '2025-07-25 06:00:00', '2025-07-25 08:30:00'),
(7, 'Air India', 'Mumbai', 'Jaipur', '2025-07-26 05:45:00', '2025-07-26 07:30:00'),
(8, 'SpiceJet', 'Ahmedabad', 'Bangalore', '2025-07-27 12:00:00', '2025-07-27 14:30:00'),
(9, 'Vistara', 'Delhi', 'Kolkata', '2025-07-28 15:00:00', '2025-07-28 17:30:00'),
(10, 'Akasa Air', 'Goa', 'Hyderabad', '2025-07-29 08:00:00', '2025-07-29 09:45:00'),
(11, 'IndiGo', 'Pune', 'Chennai', '2025-07-30 07:00:00', '2025-07-30 09:00:00'),
(12, 'Air India', 'Kolkata', 'Mumbai', '2025-07-31 06:15:00', '2025-07-31 08:45:00'),
(13, 'SpiceJet', 'Delhi', 'Ahmedabad', '2025-08-01 10:00:00', '2025-08-01 11:30:00'),
(14, 'Vistara', 'Jaipur', 'Goa', '2025-08-02 14:00:00', '2025-08-02 16:00:00'),
(15, 'Akasa Air', 'Bangalore', 'Pune', '2025-08-03 09:30:00', '2025-08-03 11:15:00'),
(16, 'IndiGo', 'Goa', 'Mumbai', '2025-08-04 16:45:00', '2025-08-04 18:30:00'),
(17, 'Air India', 'Hyderabad', 'Ahmedabad', '2025-08-05 10:00:00', '2025-08-05 12:00:00'),
(18, 'SpiceJet', 'Chennai', 'Bangalore', '2025-08-06 07:45:00', '2025-08-06 09:30:00'),
(19, 'Vistara', 'Mumbai', 'Kolkata', '2025-08-07 05:30:00', '2025-08-07 07:45:00'),
(20, 'Akasa Air', 'Pune', 'Delhi', '2025-08-08 06:00:00', '2025-08-08 08:15:00');

INSERT INTO Customers VALUES
(1, 'Ravi Mehta', 'ravi.m@example.com', '9876512345'),
(2, 'Sneha Patil', 'sneha.p@example.com', '9123456789'),
(3, 'Amit Joshi', 'amit.j@example.com', '8765432109'),
(4, 'Pooja Singh', 'pooja.s@example.com', '9988776655'),
(5, 'Vikas Sharma', 'vikas.s@example.com', '8123456780'),
(6, 'Neha Rane', 'neha.r@example.com', '9012345678'),
(7, 'Saurabh Desai', 'saurabh.d@example.com', '7654321098'),
(8, 'Anjali Gupta', 'anjali.g@example.com', '9898989898'),
(9, 'Rohan Kapoor', 'rohan.k@example.com', '9345678901'),
(10, 'Kiran Agarwal', 'kiran.a@example.com', '9123987654'),
(11, 'Meera Kulkarni', 'meera.k@example.com', '9999999999'),
(12, 'Arjun Verma', 'arjun.v@example.com', '8877665544'),
(13, 'Priya Nair', 'priya.n@example.com', '9321654987'),
(14, 'Nilesh Rao', 'nilesh.r@example.com', '8675309865'),
(15, 'Tanvi Joshi', 'tanvi.j@example.com', '8223344556'),
(16, 'Deepak Malhotra', 'deepak.m@example.com', '8765432178'),
(17, 'Ritika Bansal', 'ritika.b@example.com', '8432109876'),
(18, 'Siddharth Jain', 'siddharth.j@example.com', '9988774455'),
(19, 'Payal Das', 'payal.d@example.com', '9012456789'),
(20, 'Kunal Shah', 'kunal.s@example.com', '7896541230');

INSERT INTO Seats VALUES
(1, 1, 'A1', FALSE),
(2, 1, 'A2', FALSE),
(3, 1, 'A3', FALSE),
(4, 1, 'A4', FALSE),
(5, 1, 'A5', FALSE),
(6, 2, 'B1', FALSE),
(7, 2, 'B2', FALSE),
(8, 2, 'B3', FALSE),
(9, 2, 'B4', FALSE),
(10, 2, 'B5', FALSE),
(11, 3, 'C1', FALSE),
(12, 3, 'C2', FALSE),
(13, 3, 'C3', FALSE),
(14, 3, 'C4', FALSE),
(15, 3, 'C5', FALSE),
(16, 4, 'D1', FALSE),
(17, 4, 'D2', FALSE),
(18, 4, 'D3', FALSE),
(19, 4, 'D4', FALSE),
(20, 4, 'D5', FALSE);

INSERT INTO Bookings (BookingID, FlightID, CustomerID, SeatID, BookingDate, Status) VALUES
(1,  1,  1,  1,  '2025-07-20 08:00:00', 'Confirmed'),
(2,  2,  2,  2,  '2025-07-20 09:00:00', 'Confirmed'),
(3,  3,  3,  3,  '2025-07-20 10:00:00', 'Confirmed'),
(4,  4,  4,  4,  '2025-07-20 11:00:00', 'Confirmed'),
(5,  5,  5,  5,  '2025-07-20 12:00:00', 'Confirmed'),
(6,  6,  6,  6,  '2025-07-20 13:00:00', 'Confirmed'),
(7,  7,  7,  7,  '2025-07-20 14:00:00', 'Confirmed'),
(8,  8,  8,  8,  '2025-07-20 15:00:00', 'Confirmed'),
(9,  9,  9,  9,  '2025-07-20 16:00:00', 'Confirmed'),
(10, 10, 10, 10, '2025-07-20 17:00:00', 'Confirmed'),
(11, 11, 11, 11, '2025-07-20 18:00:00', 'Confirmed'),
(12, 12, 12, 12, '2025-07-20 19:00:00', 'Confirmed'),
(13, 13, 13, 13, '2025-07-20 20:00:00', 'Confirmed'),
(14, 14, 14, 14, '2025-07-20 21:00:00', 'Confirmed'),
(15, 15, 15, 15, '2025-07-20 22:00:00', 'Confirmed'),
(16, 16, 16, 16, '2025-07-20 23:00:00', 'Cancelled'),
(17, 17, 17, 17, '2025-07-21 00:00:00', 'Cancelled'),
(18, 18, 18, 18, '2025-07-21 01:00:00', 'Cancelled'),
(19, 19, 19, 19, '2025-07-21 02:00:00', 'Cancelled'),
(20, 20, 20, 20, '2025-07-21 03:00:00', 'Cancelled'); 

SELECT Airline, COUNT(*) AS FlightCount
FROM Flights
GROUP BY Airline;

SELECT f.FlightID, COUNT(*) AS BookingCount
FROM Bookings b
JOIN Flights f ON b.FlightID = f.FlightID
GROUP BY f.FlightID;

SELECT 
  FlightID,
  SUM(CASE WHEN Status='Confirmed' THEN 1 ELSE 0 END) AS Confirmed,
  SUM(CASE WHEN Status='Cancelled' THEN 1 ELSE 0 END) AS Cancelled
FROM Bookings
GROUP BY FlightID;

SELECT
  f.FlightID,
  ROUND(
    SUM(CASE WHEN s.IsBooked THEN 1 ELSE 0 END) /
    COUNT(s.SeatID) * 100, 2
  ) AS UtilizationPercent
FROM Flights f
JOIN Seats s ON f.FlightID = s.FlightID
GROUP BY f.FlightID;

SELECT FlightID
FROM Flights
WHERE FlightID NOT IN (
  SELECT DISTINCT FlightID FROM Bookings
);

SELECT CONCAT(Source,'→',Destination) AS Route,
       COUNT(*) AS TotalBookings
FROM Flights f
JOIN Bookings b ON f.FlightID = b.FlightID
GROUP BY Route
ORDER BY TotalBookings DESC
LIMIT 5;

SELECT c.CustomerID, c.Name, COUNT(*) AS Bookings
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY Bookings DESC
LIMIT 5;

SELECT DISTINCT c.CustomerID, c.Name
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
WHERE b.Status = 'Cancelled';

SELECT *
FROM Flights
WHERE Departure BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 7 DAY);

SELECT *
FROM Flights
WHERE Arrival BETWEEN DATE_SUB(NOW(), INTERVAL 7 DAY) AND NOW();

SELECT Source, Destination, COUNT(*) AS Trips
FROM Flights
GROUP BY Source, Destination
ORDER BY Trips DESC
LIMIT 3;

SELECT HOUR(BookingDate) AS HourSlot, COUNT(*) AS Count
FROM Bookings
GROUP BY HourSlot
ORDER BY HourSlot;

SELECT Status, COUNT(*) AS Count
FROM Bookings
GROUP BY Status;

SELECT CustomerID, DATE(BookingDate) AS BDate, COUNT(*) AS FlightsBooked
FROM Bookings
GROUP BY CustomerID, BDate
HAVING FlightsBooked > 5;

SELECT SUBSTRING_INDEX(Email,'@',-1) AS Domain, COUNT(*) AS Users
FROM Customers
GROUP BY Domain;

SELECT FlightID, TIMESTAMPDIFF(MINUTE, Departure, Arrival) AS DurationMins
FROM Flights
ORDER BY DurationMins DESC
LIMIT 1;

SELECT 
  SUM(CASE WHEN DAYOFWEEK(Departure) IN (1,7) THEN 1 ELSE 0 END)
  AS WeekendFlights
FROM Flights;

SELECT DATE(BookingDate) AS Day, COUNT(*) AS TotalBookings
FROM Bookings
WHERE BookingDate >= DATE_SUB(NOW(), INTERVAL 7 DAY)
GROUP BY Day
ORDER BY Day;

DELIMITER //
CREATE TRIGGER trg_AfterBookingInsert
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
  UPDATE Seats
    SET IsBooked = TRUE
  WHERE SeatID = NEW.SeatID;
END;
//

DELIMITER //
CREATE TRIGGER trg_AfterBookingUpdate
AFTER UPDATE ON Bookings
FOR EACH ROW
BEGIN
  IF NEW.Status = 'Cancelled' THEN
    UPDATE Seats
      SET IsBooked = FALSE
    WHERE SeatID = NEW.SeatID;
  END IF;
END;
//
DELIMITER ;

DELIMITER //
-- Trigger to free up a seat when a booking is deleted (cancellation by DELETE)
CREATE TRIGGER trg_AfterBookingDelete
AFTER DELETE ON Bookings
FOR EACH ROW
BEGIN
  UPDATE Seats
    SET IsBooked = FALSE
  WHERE SeatID = OLD.SeatID;
END;
//
DELIMITER ;

-- Find flights from Mumbai to Delhi departing on or after today
SELECT *
FROM Flights
WHERE Source = 'Mumbai'
  AND Destination = 'Delhi'
  AND Departure >= NOW();

-- List all unbooked seats for FlightID = 3
SELECT SeatNumber
FROM Seats
WHERE FlightID = 3
  AND IsBooked = FALSE;
  
CREATE OR REPLACE VIEW BookingSummary AS
SELECT 
  b.BookingID,
  c.Name     AS CustomerName,
  f.Airline,
  CONCAT(f.Source,' → ',f.Destination) AS Route,
  b.Status,
  b.BookingDate
FROM Bookings b
JOIN Customers c ON b.CustomerID = c.CustomerID
JOIN Flights   f ON b.FlightID    = f.FlightID;

CREATE OR REPLACE VIEW FlightAvailability AS
SELECT
  f.FlightID,
  f.Airline,
  CONCAT(f.Source,' → ',f.Destination) AS Route,
  COUNT(s.SeatID)               AS TotalSeats,
  SUM(CASE WHEN s.IsBooked THEN 1 ELSE 0 END) AS BookedSeats,
  SUM(CASE WHEN s.IsBooked THEN 0 ELSE 1 END) AS AvailableSeats
FROM Flights f
LEFT JOIN Seats s ON f.FlightID = s.FlightID
GROUP BY f.FlightID, f.Airline, f.Source, f.Destination;




