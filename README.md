## Plane Reservation System 

## Description
This project simulates a flight reservation system using MySQL. It includes tables for flights, customers, seats, and bookings. It demonstrates complex SQL operations, including joins, views, aggregation, and triggers.

## Database Schema
  Flights: Contains flight details like airline, source, destination, and timings.
  Customers: Stores passenger information.
  Seats: Tracks availability of seats for each flight.
  Bookings: Manages booking details and their status.

## Features
- Track booked and available seats
- Flight utilization percentages
- Confirmed vs cancelled bookings
- Frequently booked routes and customers
- Automated triggers for seat status updates
- Views for simplified data access (`BookingSummary`, `FlightAvailability`)
- Analytical queries for business insights

## Technologies Used
- MySQL
- SQL Triggers
- SQL Views
- Aggregation & Conditional Logic

 ## How to Run
1. Import the `plane project.sql` file into MySQL Workbench or any MySQL client.
2. Run the script to create the schema, populate the data, and create views/triggers.
3. Use the provided queries to test insights and analyze the system.

## Author
Created by Gouri Kudekar.
