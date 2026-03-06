CREATE DATABASE retail_project;
USE retail_project;
DROP TABLE IF EXISTS retail_orders;

CREATE TABLE retail_orders (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date_raw VARCHAR(30),
    Ship_Date_raw VARCHAR(30),
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(6,4),
    Profit DECIMAL(10,2)
);
SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE 'C:/Users/akash/OneDrive/Desktop/AKASH BHAI FILE/Projects/Excel Cleaning/clean_retail.csv'
INTO TABLE retail_orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
SELECT COUNT(*) FROM retail_orders;
select * from retail_orders limit 5;

select Category, round(sum(sales),2) as Total_sales
from retail_orders
group by Category
order by Total_Sales desc;

# Total Profit by Region
select Region, round(sum(Profit),2) as Total_Profit
from retail_orders
group by Region
order by Total_profit asc;

# Loss Percentage
select count(*) as Total_Orders,
sum(case when Profit < 0 then 1 else 0 end) as Loss_Orders,
Round(
sum(case when Profit < 0 then 1 else 0 end) * 100.0 / count(*),
 2) as Loss_Percentage
 from retail_orders;

# Top 10 Most Profitable Products
select Product_Name,
round(sum(Profit),2) as Total_Profit
from retail_orders
group by Product_Name
Order by Total_Profit desc
limit 10;

# Categories Causing Loss
select Category,
round(sum(Profit),2) as Total_Profit
from retail_orders
group by Category
order by Total_Profit asc;

# Discount Impact on Profit
select round(avg(Discount),2) as Avg_Discount,
round(avg(Profit),2) as Avg_Profit
from retail_orders;

select Discount,
round(avg(Profit),2) as Avg_Profit
from retail_orders
group by Discount
order by Discount;

# Category Performance
select Category,
round(sum(Sales),2) as Total_Sales,
round(sum(Profit),2) as Total_Profit,
round(sum(Profit) / sum(Sales),4) as Profit_Margin
from retail_orders
group by Category
order by Total_profit desc;

# Top Products in each Region
select * from (
select Region, Product_Name, 
round(sum(Profit),2) as Total_Profit,
rank() over (partition by Region order by sum(Profit) desc) as rnk
from retail_orders
group by Region, Product_Name) ranked_products
where rnk <= 3;

# Loss drivers Sub-Categories
select Sub_Category,
round(sum(Profit),2) as Total_profit
from retail_orders
group by Sub_Category
order by Total_profit asc
limit 10;

select * from retail_orders;


## Insights from the query:
# • Technology generates the highest total revenue.
# • Central region produces the lowest overall profit.
# • Approximately 18.7% of orders are loss-making.
# • Furniture has the lowest profit among categories.
# • Tables, Bookcases, and Supplies are the worst-performing sub-categories.

