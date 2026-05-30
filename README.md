# Customer Sales Analysis Using SQL

## Project Overview

This project analyzes customer purchasing behavior and sales performance using SQL with multi-dimensional insights.

The objective is to identify:

* High-value customers
* Revenue trends across regions and payment methods
* Best-performing products
* Customer purchasing patterns
* Regional performance metrics
* Payment method adoption and preferences

## Tools Used

* SQL
* Excel/CSV

## Dataset Features

The dataset includes the following columns:

* **customer_id**: Unique customer identifier
* **customer_name**: Name of the customer
* **product**: Product purchased
* **order_date**: Date of purchase
* **sales_amount**: Revenue from the order
* **region**: Geographic region (Lagos, Abuja, Port Harcourt, Ibadan, Kano)
* **payment_method**: Payment mode (Card, Transfer, Cash, USSD)

## Business Questions

### Core Questions
1. Who are the top customers by revenue?
2. Which products generate the highest sales?
3. What are the monthly revenue trends?
4. Which customers purchase most frequently?

### Regional Analysis
5. What is the top-selling region by revenue?
6. How does regional performance vary?
7. Which regions have the highest average order value?

### Payment Method Analysis
8. What is the revenue distribution by payment method?
9. Which payment methods are preferred by region?
10. How does average transaction value differ by payment method?

### Advanced Insights
11. What is the monthly revenue trend?
12. What is the average order value overall and by segment?
13. How do products perform by region?
14. Which customers are most valuable?

## Key Analyses Available

### Regional Performance
- Top-selling region by revenue
- Regional performance summary with customer and order metrics
- Revenue by region with breakdown

### Payment Method Insights
- Revenue by payment method with percentage distribution
- Payment method distribution by region
- Payment method preferences across regions

### Temporal Analysis
- Monthly revenue trends
- Monthly trends by region
- Monthly trends by payment method

### Customer Insights
- Top customers by revenue
- Customer purchase frequency
- Customer lifetime value analysis

### Product Analysis
- Best-selling products
- Top 5 products by revenue
- Product performance by region

### Order Value Analysis
- Average order value (overall, by region, by payment method, by customer)
- Order value distribution and statistics

## Key Findings

* Identified top revenue-generating customers
* Highlighted best-selling products and regions
* Revealed purchasing patterns supporting customer retention strategies
* Analyzed payment method preferences by geography
* Tracked monthly revenue trends

## Skills Demonstrated

* Data Cleaning
* SQL Queries (aggregate functions, grouping, date functions)
* Multi-dimensional Analysis
* Regional Segmentation
* Payment Analysis
* Business Intelligence
* Reporting and Insights

## Files in This Repository

* **dataset.csv**: Raw sales data with region and payment method dimensions
* **sales_analysis.sql**: Original SQL analysis queries
* **sales_analysis_extended.sql**: Comprehensive queries for regional, payment method, and advanced analyses
* **insights.md**: Detailed findings and recommendations
* **README.md**: Project documentation (this file)

## How to Use

1. Import `dataset.csv` into your SQL database
2. Run queries from `sales_analysis_extended.sql` to generate insights
3. Review findings in `insights.md` for business recommendations

## Next Steps

- Set up dashboards for real-time monitoring of regional and payment method metrics
- Implement automated reporting for monthly revenue trends
- Conduct deeper customer segmentation analysis
- Analyze payment method conversion rates and adoption trends
