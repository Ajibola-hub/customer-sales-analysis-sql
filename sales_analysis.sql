-- Customer Sales Analysis Queries
-- This file contains SQL queries for analyzing customer sales data

-- Total Revenue
SELECT SUM(sales_amount) AS total_revenue
FROM sales;

-- Top Customers
SELECT customer_name,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY customer_name
ORDER BY revenue DESC;

-- Monthly Sales
SELECT MONTH(order_date) AS month,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY MONTH(order_date);

-- Query 1: Total Sales by Customer
SELECT 
    customer_id,
    customer_name,
    COUNT(*) as total_orders,
    SUM(amount) as total_sales,
    AVG(amount) as average_order_value
FROM sales
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC;

-- Query 2: Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', order_date) as month,
    COUNT(*) as total_orders,
    SUM(amount) as monthly_revenue,
    AVG(amount) as avg_order_value
FROM sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month DESC;

-- Query 3: Top Products by Revenue
SELECT 
    product_id,
    product_name,
    COUNT(*) as units_sold,
    SUM(amount) as total_revenue,
    AVG(amount) as avg_price
FROM sales
GROUP BY product_id, product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Query 4: Customer Segmentation
SELECT 
    CASE 
        WHEN total_sales >= 10000 THEN 'Premium'
        WHEN total_sales >= 5000 THEN 'Gold'
        WHEN total_sales >= 1000 THEN 'Silver'
        ELSE 'Bronze'
    END as customer_segment,
    COUNT(*) as segment_count,
    AVG(total_sales) as avg_customer_value
FROM (
    SELECT customer_id, SUM(amount) as total_sales
    FROM sales
    GROUP BY customer_id
) customer_totals
GROUP BY customer_segment
ORDER BY avg_customer_value DESC;

-- Query 5: Sales Performance Summary
SELECT 
    COUNT(DISTINCT customer_id) as total_customers,
    COUNT(*) as total_orders,
    SUM(amount) as total_revenue,
    AVG(amount) as average_order_value,
    MIN(order_date) as first_order_date,
    MAX(order_date) as last_order_date
FROM sales;
