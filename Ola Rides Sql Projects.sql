create database Ola;
use Ola;

#1. Retrieve all successful bookings:
select * from bookings 
where Booking_Status = 'Success';


#2. Find the average ride distance for each vehicle type:
select Vehicle_Type,avg(Ride_Distance) as avg_distance from bookings
group by Vehicle_Type;


#3. Get the total number of cancelled rides by customers:
select count(Booking_Status) as total_cancelled_rides_by_customers from bookings
where Booking_Status = 'Canceled by Customer';


#4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID AS Customers, COUNT(Booking_ID) AS No_of_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY No_of_Rides DESC
LIMIT 5;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(Canceled_Rides_by_Driver) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';


#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select Vehicle_Type, max(Driver_Ratings), min(Driver_Ratings) from bookings
where Vehicle_Type = 'Prime Sedan'; 


#7. Retrieve all rides where payment was made using UPI:
select * from bookings
where Payment_Method = 'UPI';


#8. Find the average customer rating per vehicle type:
select Vehicle_Type, avg(Customer_Rating) from bookings
group by Vehicle_Type;


#9. Calculate the total booking value of rides completed successfully:
select sum(Booking_Value) as total_successful_ride_value from bookings
where Booking_Status = 'Success';


#10. List all incomplete rides along with the reason:
select Booking_ID, Incomplete_Rides_Reason from bookings 
where Incomplete_Rides = 'Yes';
