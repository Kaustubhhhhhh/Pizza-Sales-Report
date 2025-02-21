# Problem Statements

#KPI's Requirement 

#Total Revenue
select sum(total_price) as Total_Revenue from pizza_sales_new;

#Average Order Value 
select sum(total_price) / count(distinct order_id) as Avg_order_Value from pizza_sales_new;

#Total Pizza Sold
select sum(quantity) as Total_Pizza_Sold from pizza_sales_new;

#Total Orders
select count(distinct order_id) as  Total_Orders from pizza_sales_new;

#Average pizzas per order
Select cast(sum(quantity) / count(distinct order_id) as decimal (10,2)) as Avg_pizzas_per_order From pizza_sales_new;


#Chart Requirment 

#Daily Trend for total orders 
 
select day_name as order_day, count(distinct order_id) as Total_Orders 
from pizza_sales_new
group by day_name;


#Monthly Trend For Total Orders 

select month_name as Month_Name, count(distinct order_id) as Total_Orders
from pizza_sales_new
group by month_name;

#Percentage of sales by pizza category

select * from pizza_sales_new;

select pizza_category, sum(total_price) * 100 / (select sum(total_price) from pizza_sales_new) as Total_Sales
from pizza_sales_new
group by pizza_category;

# Top 5 pizzas by Revenue

select pizza_name, sum(total_price) as Total_Revenue From pizza_sales_new
group by pizza_name
order by Total_Revenue desc limit 5;

# Bottom 5 pizzas by Revenue

select pizza_name, sum(total_price) as Total_Revenue From pizza_sales_new
group by pizza_name
order by Total_Revenue asc limit 5;

# top 5 pizzas by Quantity

select pizza_name, sum(quantity) as Total_Quantity From pizza_sales_new
group by pizza_name
order by Total_Quantity desc limit 5;

# bottom 5 pizzas by Quantity

select pizza_name, sum(quantity) as Total_Quantity From pizza_sales_new
group by pizza_name
order by Total_Quantity asc limit 5;

# top 5 pizzas by Orders

select pizza_name, count(distinct order_id) as Total_Orders From pizza_sales_new
group by pizza_name
order by Total_Orders desc limit 5;

# top 5 pizzas by Orders

select pizza_name, count(distinct order_id) as Total_Orders From pizza_sales_new
group by pizza_name
order by Total_Orders asc limit 5;
