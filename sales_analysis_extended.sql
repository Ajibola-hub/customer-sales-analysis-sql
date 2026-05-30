-- Customer Sales Analysis Queries (Extended)
-- This file contains SQL queries for analyzing customer sales data with region and payment method dimensions

-- ============================================
-- REGIONAL ANALYSIS
-- ============================================

-- Top-Selling Region by Revenue
SELECT 
    region,
    COUNT(*) as total_orders,
    SUM(sales_amount) as total_revenue,
    AVG(sales_amount) as avg_order_value,
    COUNT(DISTINCT customer_id) as unique_customers
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Regional Performance Summary
SELECT 
    region,
    COUNT(DISTINCT customer_id) as customer_count,
    COUNT(*) as order_count,
    SUM(sales_amount) as revenue,
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    MAX(sales_amount) as highest_order,
    MIN(sales_amount) as lowest_order
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- ============================================
-- PAYMENT METHOD ANALYSIS
-- ============================================

-- Revenue by Payment Method
SELECT 
    payment_method,
    COUNT(*) as transaction_count,
    SUM(sales_amount) as total_revenue,
    AVG(sales_amount) as avg_transaction_value,
    ROUND((SUM(sales_amount) * 100.0 / (SELECT SUM(sales_amount) FROM sales)), 2) as revenue_percentage
FROM sales
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- Payment Method Distribution by Region
SELECT 
    region,
    payment_method,
    COUNT(*) as transactions,
    SUM(sales_amount) as revenue,
    ROUND(AVG(sales_amount), 2) as avg_amount
FROM sales
GROUP BY region, payment_method
ORDER BY region, revenue DESC;

-- Payment Method Preference by Region
SELECT 
    region,
    payment_method,
    COUNT(*) as usage_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales WHERE region = s.region)), 2) as usage_percentage
FROM sales s
GROUP BY region, payment_method
ORDER BY region, usage_count DESC;

-- ============================================
-- MONTHLY REVENUE TREND
-- ============================================

-- Monthly Revenue Trend
SELECT 
    DATE_TRUNC('month', order_date) as month,
    COUNT(*) as total_orders,
    COUNT(DISTINCT customer_id) as unique_customers,
    SUM(sales_amount) as monthly_revenue,
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    MIN(sales_amount) as lowest_order,
    MAX(sales_amount) as highest_order
FROM sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month DESC;

-- Monthly Revenue Trend by Region
SELECT 
    DATE_TRUNC('month', order_date) as month,
    region,
    SUM(sales_amount) as monthly_revenue,
    COUNT(*) as order_count
FROM sales
GROUP BY DATE_TRUNC('month', order_date), region
ORDER BY month DESC, monthly_revenue DESC;

-- Monthly Revenue Trend by Payment Method
SELECT 
    DATE_TRUNC('month', order_date) as month,
    payment_method,
    SUM(sales_amount) as monthly_revenue,
    COUNT(*) as transaction_count
FROM sales
GROUP BY DATE_TRUNC('month', order_date), payment_method
ORDER BY month DESC, monthly_revenue DESC;

-- ============================================
-- CUSTOMER ANALYSIS
-- ============================================

-- Top Customers by Revenue
SELECT 
    customer_id,
    customer_name,
    region,
    COUNT(*) as total_orders,
    SUM(sales_amount) as total_revenue,
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    MIN(order_date) as first_purchase,
    MAX(order_date) as last_purchase
FROM sales
GROUP BY customer_id, customer_name, region
ORDER BY total_revenue DESC;

-- Top 5 Customers
SELECT 
    customer_id,
    customer_name,
    region,
    COUNT(*) as total_orders,
    SUM(sales_amount) as total_revenue,
    ROUND(AVG(sales_amount), 2) as avg_order_value
FROM sales
GROUP BY customer_id, customer_name, region
ORDER BY total_revenue DESC
LIMIT 5;

-- Customer Purchase Frequency
SELECT 
    customer_name,
    region,
    COUNT(*) as purchase_count,
    SUM(sales_amount) as total_spent,
    ROUND(AVG(sales_amount), 2) as avg_spent_per_purchase,
    MIN(order_date) as first_order,
    MAX(order_date) as recent_order
FROM sales
GROUP BY customer_name, region
ORDER BY purchase_count DESC;

-- ============================================
-- PRODUCT ANALYSIS
-- ============================================

-- Best-Selling Products
SELECT 
    product,
    COUNT(*) as units_sold,
    SUM(sales_amount) as total_revenue,
    ROUND(AVG(sales_amount), 2) as avg_price,
    MIN(sales_amount) as min_price,
    MAX(sales_amount) as max_price,
    COUNT(DISTINCT customer_id) as unique_buyers
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

-- Top 5 Best-Selling Products
SELECT 
    product,
    COUNT(*) as units_sold,
    SUM(sales_amount) as total_revenue,
    ROUND(AVG(sales_amount), 2) as avg_price
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

-- Product Performance by Region
SELECT 
    product,
    region,
    COUNT(*) as units_sold,
    SUM(sales_amount) as revenue,
    ROUND(AVG(sales_amount), 2) as avg_price
FROM sales
GROUP BY product, region
ORDER BY product, revenue DESC;

-- ============================================
-- AVERAGE ORDER VALUE ANALYSIS
-- ============================================

-- Average Order Value Overall
SELECT 
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    ROUND(STDDEV(sales_amount), 2) as std_deviation,
    MIN(sales_amount) as min_order,
    MAX(sales_amount) as max_order,
    COUNT(*) as total_orders
FROM sales;

-- Average Order Value by Region
SELECT 
    region,
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    ROUND(STDDEV(sales_amount), 2) as std_deviation,
    COUNT(*) as order_count
FROM sales
GROUP BY region
ORDER BY avg_order_value DESC;

-- Average Order Value by Payment Method
SELECT 
    payment_method,
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    COUNT(*) as transaction_count,
    SUM(sales_amount) as total_revenue
FROM sales
GROUP BY payment_method
ORDER BY avg_order_value DESC;

-- Average Order Value by Customer
SELECT 
    customer_name,
    region,
    ROUND(AVG(sales_amount), 2) as avg_order_value,
    COUNT(*) as order_count,
    SUM(sales_amount) as total_spent
FROM sales
GROUP BY customer_name, region
ORDER BY avg_order_value DESC;

-- ============================================
-- COMPREHENSIVE SUMMARY
-- ============================================

-- Sales Performance Summary
SELECT 
    COUNT(DISTINCT customer_id) as total_customers,
    COUNT(*) as total_orders,
    COUNT(DISTINCT product) as unique_products,
    COUNT(DISTINCT region) as regions_covered,
    SUM(sales_amount) as total_revenue,
    ROUND(AVG(sales_amount), 2) as average_order_value,
    MIN(order_date) as first_order_date,
    MAX(order_date) as last_order_date
FROM sales;

-- Regional and Payment Method Breakdown
SELECT 
    region,
    payment_method,
    COUNT(*) as transaction_count,
    SUM(sales_amount) as revenue,
    COUNT(DISTINCT customer_id) as customer_count,
    ROUND(AVG(sales_amount), 2) as avg_order_value
FROM sales
GROUP BY region, payment_method
ORDER BY region, revenue DESC;
