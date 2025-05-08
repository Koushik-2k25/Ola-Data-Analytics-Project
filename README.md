# Ola-Data-Analytics-End-to-End-Project
## Project Objective
Designed and executed a comprehensive data analytics project on OLA ride data for Bengaluru city. Cleaned and transformed records in MS Excel, analyzed key business metrics using MySQL to address ride volume, cancellation trends, and customer-driver behavior. Developed interactive dashboards in Power BI to visualize booking patterns, revenue insights, and rating distributions. The project focused on generating actionable insights to improve customer satisfaction, optimize resource utilization, and enhance service reliability.

## Dataset used
📈 <a href="https://github.com/Koushik-2k25/Ola-Data-Analytics-Project/blob/main/Ola_Rides_Bookings_Dataset.xlsx">Dataset</a>

## SQL Questions & Answers
create database Ola; <br>
use Ola;

1. Retrieve all successful bookings: <br>
Ans- select * from bookings <br>
where Booking_Status = 'Success';

2. Find the average ride distance for each vehicle type:<br>
Ans- select Vehicle_Type,avg(Ride_Distance) as avg_distance from bookings<br>
group by Vehicle_Type;


3. Get the total number of cancelled rides by customers:<br>
Ans- select count(Booking_Status) as total_cancelled_rides_by_customers from bookings<br>
where Booking_Status = 'Canceled by Customer';

4. List the top 5 customers who booked the highest number of rides:<br>
Ans- SELECT Customer_ID AS Customers, COUNT(Booking_ID) AS No_of_Rides<br>
FROM bookings<br>
GROUP BY Customer_ID<br>
ORDER BY No_of_Rides DESC<br>
LIMIT 5;

5. Get the number of rides cancelled by drivers due to personal and car-related issues:<br>
Ans- select count(Canceled_Rides_by_Driver) from bookings<br>
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

6. Find the maximum and minimum driver ratings for Prime Sedan bookings:<br>
Ans- select Vehicle_Type, max(Driver_Ratings), min(Driver_Ratings) from bookings<br>
where Vehicle_Type = 'Prime Sedan'; 

7. Retrieve all rides where payment was made using UPI:<br>
Ans- select * from bookings<br>
where Payment_Method = 'UPI';

8. Find the average customer rating per vehicle type:<br>
Ans- select Vehicle_Type, avg(Customer_Rating) from bookings<br>
group by Vehicle_Type;

9. Calculate the total booking value of rides completed successfully:<br>
Ans- select sum(Booking_Value) as total_successful_ride_value from bookings<br>
where Booking_Status = 'Success';

10. List all incomplete rides along with the reason:<br>
Ans- select Booking_ID, Incomplete_Rides_Reason from bookings <br>
where Incomplete_Rides = 'Yes';

🧮 SQL Queries<a href="https://github.com/Koushik-2k25/Ola-Data-Analytics-Project/blob/main/Ola%20Rides%20Sql%20Projects.sql">View SQL Scripts</a>

## Power BI Questions:
1. Ride Volume Over Time
2. Booking Status Breakdown
3. Top 5 Vehicle Types by Ride Distance
4. cancelled Rides Reasons
5. Revenue by Payment Method
6. Top 5 Customers by Total Booking Value
7. Ride Distance Distribution Per Day
8. Driver Ratings Distribution
9. Customer Ratings Distribution
    
## Power BI Answers:
1. Ride Volume Over Time: A Line chart showing the number of rides per day/week.
2. Booking Status Breakdown: A pie or doughnut chart displaying the proportion of different
booking statuses (success, cancelled by the customer, cancelled by the driver, etc.).
3. Top 5 Vehicle Types by Ride Distance: Use Cards on the ppt to calculate the total
booking value, success booking value, Avg. distance Travelled & Total distance Travelled.
4. cancelled Rides Reasons: Two pie charts that highlights the common reasons for ride
cancellations by customers and drivers.
5. Revenue by Payment Method: A stacked Column chart displaying total revenue based on
payment methods (Cash, UPI, Credit Card, etc.).
6. Top 5 Customers by Total Booking Value: A leaderboard visual listing customers who have
spent the most on bookings.
7. Ride Distance Distribution Per Day: A column showing the distribution of
ride distances for different Dates.
8. Driver Rating Distribution: Cards visualizing the spread of driver ratings for different
vehicle types on ppt.
9. Customer Ratings Distribution: Cards visualizing the spread of customer ratings for different
vehicle types on ppt.

📊 Power BI Dashboard<a href="https://github.com/Koushik-2k25/Ola-Data-Analytics-Project/blob/main/Ola%20Rides%20%E2%80%93%20Power%20BI%20Visualization.pbix">View Dashboard</a>

## Dashboard
![Screenshot 2025-05-08 022211](https://github.com/user-attachments/assets/e333a9af-787f-4567-ab63-f29ab3a03329)
![Screenshot 2025-05-08 024442](https://github.com/user-attachments/assets/bdd75190-3a4c-49ed-8423-ded3c866eb09)
![Screenshot 2025-05-07 125115](https://github.com/user-attachments/assets/f6535d44-144e-466f-b5f5-3e126027310d)
![Screenshot 2025-05-07 125223](https://github.com/user-attachments/assets/f43283cb-776e-467a-a00c-2250247858b0)
![Screenshot 2025-05-07 125321](https://github.com/user-attachments/assets/7a6328b3-4dff-477f-81d4-17f846dfb837)

## Project Insights
- Identified peak ride volumes during weekends and match days, indicating strong demand fluctuations based on external events.
- Detected that the majority of cancellations by customers were due to drivers not approaching the pickup point, highlighting the need for better driver-route alignment.
- Observed higher ride values and longer distances during weekends, suggesting strategic pricing or marketing opportunities.
- Found that most low driver ratings were associated with certain vehicle types, revealing areas for targeted service improvement.
- Discovered that UPI was among the most used payment methods, indicating user preference for digital transactions.
- Highlighted that incomplete rides, though less than 6%, were mostly due to vehicle breakdowns, showing scope for vehicle maintenance optimization.

## Final Conclusion
This project demonstrated a complete data analysis pipeline—from data cleaning and transformation to SQL-based business analysis and dynamic visualization using Power BI. By simulating real-world ride data, the project provided valuable insights into user behavior, operational inefficiencies, and revenue patterns. These insights can support data-driven decisions to enhance customer satisfaction, optimize fleet performance, and reduce cancellations. Overall, the project reflects strong analytical, technical, and visualization skills essential for real-world data analyst roles.
