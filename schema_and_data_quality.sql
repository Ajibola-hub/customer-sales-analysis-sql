-- Customer Sales Analysis - Database Schema
-- Create the sales table with proper structure and constraints

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL,
    order_date DATE NOT NULL,
    sales_amount DECIMAL(10, 2) NOT NULL,
    region VARCHAR(50) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT check_sales_amount CHECK (sales_amount > 0),
    CONSTRAINT check_valid_region CHECK (region IN ('Lagos', 'Abuja', 'Port Harcourt', 'Ibadan', 'Kano')),
    CONSTRAINT check_valid_payment CHECK (payment_method IN ('Card', 'Transfer', 'Cash', 'USSD'))
);

-- Create indexes for query performance
CREATE INDEX idx_customer_id ON sales(customer_id);
CREATE INDEX idx_order_date ON sales(order_date);
CREATE INDEX idx_region ON sales(region);
CREATE INDEX idx_payment_method ON sales(payment_method);
CREATE INDEX idx_product ON sales(product);

-- ============================================
-- DATA QUALITY CHECKS
-- ============================================

-- Check for NULL values
SELECT 
    'customer_id' as column_name,
    COUNT(*) as null_count
FROM sales
WHERE customer_id IS NULL
UNION ALL
SELECT 'customer_name', COUNT(*) FROM sales WHERE customer_name IS NULL
UNION ALL
SELECT 'product', COUNT(*) FROM sales WHERE product IS NULL
UNION ALL
SELECT 'order_date', COUNT(*) FROM sales WHERE order_date IS NULL
UNION ALL
SELECT 'sales_amount', COUNT(*) FROM sales WHERE sales_amount IS NULL
UNION ALL
SELECT 'region', COUNT(*) FROM sales WHERE region IS NULL
UNION ALL
SELECT 'payment_method', COUNT(*) FROM sales WHERE payment_method IS NULL;

-- Check for duplicate transactions
SELECT 
    customer_id,
    product,
    order_date,
    sales_amount,
    COUNT(*) as occurrence_count
FROM sales
GROUP BY customer_id, product, order_date, sales_amount
HAVING COUNT(*) > 1
ORDER BY occurrence_count DESC;

-- Check for invalid sales amounts
SELECT 
    sale_id,
    customer_name,
    product,
    sales_amount
FROM sales
WHERE sales_amount <= 0
ORDER BY sales_amount;

-- Check data type consistency
SELECT 
    COUNT(*) as total_records,
    COUNT(DISTINCT customer_id) as unique_customers,
    COUNT(DISTINCT product) as unique_products,
    COUNT(DISTINCT region) as unique_regions,
    COUNT(DISTINCT payment_method) as unique_payment_methods,
    MIN(order_date) as earliest_order,
    MAX(order_date) as latest_order,
    MIN(sales_amount) as min_sale,
    MAX(sales_amount) as max_sale
FROM sales;

-- Check region distribution
SELECT 
    region,
    COUNT(*) as transaction_count,
    COUNT(DISTINCT customer_id) as customer_count,
    ROUND(SUM(sales_amount), 2) as total_revenue,
    ROUND(AVG(sales_amount), 2) as avg_transaction
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Check payment method distribution
SELECT 
    payment_method,
    COUNT(*) as transaction_count,
    ROUND(SUM(sales_amount), 2) as total_revenue,
    ROUND(AVG(sales_amount), 2) as avg_transaction,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales)), 2) as percentage
FROM sales
GROUP BY payment_method
ORDER BY total_revenue DESC;
