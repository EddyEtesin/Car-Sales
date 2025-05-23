SELECT * FROM dbms2.updated_car_sales_data;

#1 What is the total number of cars sold?
Select Count(*)  as TotalSales FROM dbms2.updated_car_sales_data;

#2 What is the average selling price of all cars?
Select Avg(Price)  as Average_price FROM dbms2.updated_car_sales_data;

#3 What is the average mileage of cars sold?
Select Avg(Mileage) as AverageMileage FROM dbms2.updated_car_sales_data;

#4 What is the average price of cars grouped by:
#Car Make
Select `Car Make`, Avg(Price) as Average_price FROM dbms2.updated_car_sales_data
group by `Car Make`;

#Fuel Type
Select `Fuel Type`, Avg(Price) as Average_price FROM dbms2.updated_car_sales_data
group by `Fuel Type`;
  
#Transmission type
Select Transmission, Avg(Price) as Average_price FROM dbms2.updated_car_sales_data
group by Transmission;
  
#Condition
Select `Condition`, Avg(Price) as Average_price FROM dbms2.updated_car_sales_data
group by `Condition`;

#5 Which Car Make has the highest number of sales?
Select `Car Make`, Count(*) as Total_Sales FROM dbms2.updated_car_sales_data
group by `Car Make`
order by Total_Sales desc
Limit 1 ;

#6 What are the top 5 most expensive Car Models sold?
Select `Car Model`, Avg(Price) as AveragePrice FROM dbms2.updated_car_sales_data
group by `Car Model`
order by AveragePrice desc
Limit 5 ;

#7 How many cars were manufactured each year?
Select Year, count(*) as Cars_Manufactured FROM dbms2.updated_car_sales_data
group by Year
order by Year;

#8 What is the average price of cars by year of manufacture?
Select Year, Avg(Price) as Price FROM dbms2.updated_car_sales_data
group by Year
order by Year;

#9 How many cars with accident history were sold?
Select Count(*) as Cars_sold FROM dbms2.updated_car_sales_data
where Accident	= 'Yes';

#10 What is the average price difference between accident and non-accident cars?
select Accident as Vehicles_with_accident, Avg(Price) as Average_price FROM dbms2.updated_car_sales_data
group by Accident;

#11 Compare the price of “Used” vs “New” cars.
Select `Condition` , avg(Price) as Average_price FROM dbms2.updated_car_sales_data
group by `Condition`;

#12 Which cars have “Leather Seats” in their features?
Select `Car Make`, `Car Model`  FROM dbms2.updated_car_sales_data
where `Options/Features` Like '%Leather%';

#13 What’s the average price of cars with both “GPS” and “Backup Camera”?
Select Avg(Price) as AveragePrice from 
(Select `Car Make`, `Car Model` ,`Options/Features`, Price FROM dbms2.updated_car_sales_data
where `Options/Features` Like '%GPS%' and `Options/Features`Like '%Backup Camera%') as Specials;

#14 What is the average price and mileage for each combination of `Car Make` and `Transmission`?
Select `Car Make`, `Transmission`, Avg(Price) as Average_Price, Avg(Mileage) as Average_Mileage
FROM dbms2.updated_car_sales_data
group by `Car Make`, `Transmission`;

#15 Which combination of `Fuel Type` and `Condition` yields the highest average price?
select `Fuel Type`, `Condition`, Avg(Price) As Average_Price FROM dbms2.updated_car_sales_data
group by `Fuel Type`, `Condition`
order by Average_Price desc
limit 1;

#16 Find all Electric cars manufactured after 2020 with less than 20,000 mileage.
select *  FROM dbms2.updated_car_sales_data
where `Fuel Type` = 'Electric' and Year >= 2020 and Mileage < 20000;

#17 List cars with price over \$100,000 and mileage under 30,000.
select *  FROM dbms2.updated_car_sales_data
where Price > 150000 and Mileage < 30000;

#18 How many cars are Yellow and have Manual transmission?
select Count(*) as Vehicle_Count  FROM dbms2.updated_car_sales_data
where Color = 'Yellow'  and Transmission = 'Manual'


