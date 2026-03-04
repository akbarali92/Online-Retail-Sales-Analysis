CREATE DATABASE orders;
USE orders;
#1.Total_revenue :
SELECT SUM(quantity * price * (1 - discount)) AS total_revenue
FROM online_retail;

#2. Monthly Sales Trend
SELECT 
    MONTH(order_date) AS month,
    SUM(quantity * price * (1 - discount)) AS monthly_revenue
FROM online_retail
GROUP BY MONTH(order_date)
ORDER BY month;

#3. Top 5 Customers (Advanced Concept – ORDER BY + LIMIT
SELECT 
    customer_id,
    SUM(quantity * price * (1 - discount)) AS customer_revenue
FROM online_retail
GROUP BY customer_id
ORDER BY customer_revenue DESC
LIMIT 5;

#4. Most Profitable Category
SELECT 
    product_category,
    SUM(quantity * price * (1 - discount)) AS category_revenue
FROM online_retail
GROUP BY product_category
ORDER BY category_revenue DESC;



