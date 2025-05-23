# Car Sales Data Analysis - SQL Queries

## Overview
This repository contains SQL queries analyzing car sales data, examining pricing trends, popular models, and vehicle features across different makes, conditions, and specifications.

## Dataset Description
The dataset `updated_car_sales_data` contains the following columns:

- **Vehicle Identification**:
  - Car Make
  - Car Model
  - Year

- **Vehicle Specifications**:
  - Fuel Type
  - Transmission
  - Condition (New/Used)
  - Mileage
  - Color
  - Options/Features

- **Sales Information**:
  - Price
  - Accident History (Yes/No)

## SQL Queries
The repository includes 18 analytical queries that examine:

1. Basic sales statistics (total cars sold, average price, average mileage)
2. Price analysis by vehicle attributes (make, fuel type, transmission, condition)
3. Sales performance by manufacturer and model
4. Feature analysis (leather seats, GPS, backup camera)
5. Special vehicle segments (electric cars, luxury vehicles)
6. Unique vehicle combinations

## Key Analysis Areas

### Basic Statistics
1. Total number of cars sold (#1)
2. Average selling price (#2)
3. Average mileage (#3)

### Price Analysis
4. Average price by make, fuel type, transmission, and condition (#4)
10. Price difference between accident and non-accident cars (#10)
11. Price comparison of used vs new cars (#11)
13. Price of cars with GPS and backup camera (#13)
14. Price and mileage by make and transmission (#14)
15. Highest average price by fuel type and condition (#15)

### Top Performers
5. Car make with highest sales (#5)
6. Top 5 most expensive models (#6)

### Manufacturing Trends
7. Cars manufactured by year (#7)
8. Average price by manufacturing year (#8)

### Feature Analysis
12. Cars with leather seats (#12)
13. Cars with GPS and backup camera (#13)
18. Yellow cars with manual transmission (#18)

### Special Segments
9. Cars with accident history (#9)
16. Electric cars manufactured after 2020 with low mileage (#16)
17. High-end cars (>$100k) with low mileage (#17)

## How to Use
1. Import the dataset into your MySQL database under schema `dbms2`
2. Run the SQL queries individually to reproduce the analysis
3. Modify queries as needed for your specific database environment

## Requirements
- MySQL or compatible database system
- Basic SQL knowledge to adapt queries if needed

## File Structure
- `Car sales.sql` - Contains all 18 analytical queries
- Dataset should be imported as `dbms2.updated_car_sales_data`

Note: The dataset is included in this repository (please ensure it's properly imported before running the queries). The queries can be executed individually to analyze different aspects of the car sales data.
