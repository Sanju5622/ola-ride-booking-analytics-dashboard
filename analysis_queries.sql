---------------------------Total Bookings-------------------------
SELECT COUNT(*) AS total_bookings
FROM ola_bookings;

-----------------------------Total Revenue------------------------
SELECT SUM(Booking_Value) AS total_revenue
FROM ola_bookings;

------------------------------Booking Status Distribution-----------
SELECT Booking_Status,
       COUNT(*) AS total_bookings
FROM ola_bookings
GROUP BY Booking_Status
ORDER BY total_bookings DESC;

-------------------------------Revenue by Vehicle Type----------------
SELECT Vehicle_Type,
       SUM(Booking_Value) AS revenue
FROM ola_bookings
GROUP BY Vehicle_Type
ORDER BY revenue DESC;
--------------------------------Top 10 Pickup Locations----------------
SELECT Pickup_Location,
       COUNT(*) AS total_rides
FROM ola_bookings
GROUP BY Pickup_Location
ORDER BY total_rides DESC
LIMIT 10;
---------------------------------Customer Cancellation Analysis-------------
SELECT COUNT(*) AS customer_cancellations
FROM ola_bookings
WHERE Canceled_Rides_by_Customer = 'Yes';
---------------------------------Driver Cancellation Analysis---------------
SELECT COUNT(*) AS driver_cancellations
FROM ola_bookings
WHERE Canceled_Rides_by_Driver = 'Yes';
-----------------------------Most Preferred Payment Method-----------------
SELECT Payment_Method,
       COUNT(*) AS total_transactions
FROM ola_bookings
GROUP BY Payment_Method
ORDER BY total_transactions DESC;
--------------------------Top Customers by Spending----------------------
SELECT Customer_ID,
       SUM(Booking_Value) AS total_spent
FROM ola_bookings
GROUP BY Customer_ID
ORDER BY total_spent DESC
LIMIT 10;
