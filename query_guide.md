# SQL Query Guide - Customer Sales Analysis

This guide explains each SQL query in the `sales_analysis_extended.sql` file, what it does, and why it's useful for business insights.

## Table of Contents
1. [Regional Analysis](#regional-analysis)
2. [Payment Method Analysis](#payment-method-analysis)
3. [Monthly Revenue Trends](#monthly-revenue-trends)
4. [Customer Analysis](#customer-analysis)
5. [Product Analysis](#product-analysis)
6. [Average Order Value Analysis](#average-order-value-analysis)
7. [Comprehensive Summary](#comprehensive-summary)

---

## Regional Analysis

### Query 1: Top-Selling Region by Revenue
**Purpose**: Identify which region generates the most revenue overall.

**Business Use**: 
- Understand geographic performance
- Allocate marketing budget to high-performing regions
- Identify expansion opportunities in underperforming regions

**Output Columns**:
- `region`: The geographic region
- `total_orders`: Number of transactions
- `total_revenue`: Sum of all sales
- `avg_order_value`: Average transaction value
- `unique_customers`: How many different customers purchased

**Key Question Answered**: "Which region is our best-performing market?"

---

### Query 2: Regional Performance Summary
**Purpose**: Get a comprehensive view of each region's performance with statistical details.

**Business Use**:
- Compare regions on multiple metrics
- Identify patterns (some regions might have fewer but larger orders)
- Make region-specific decisions

**Output Columns**:
- `region`: Geographic region
- `customer_count`: Number of unique customers in region
- `order_count`: Total transactions
- `revenue`: Total sales amount
- `avg_order_value`: Average purchase size
- `highest_order`: Largest single transaction
- `lowest_order`: Smallest single transaction

**Key Question Answered**: "What are the detailed metrics for each region?"

---

## Payment Method Analysis

### Query 3: Revenue by Payment Method
**Purpose**: Understand which payment methods customers prefer and which generate most revenue.

**Business Use**:
- Ensure payment infrastructure supports popular methods
- Identify underutilized payment options (invest in adoption)
- Plan payment processing partnerships

**Output Columns**:
- `payment_method`: Type of payment (Card, Transfer, Cash, USSD)
- `transaction_count`: Number of times used
- `total_revenue`: Revenue from this method
- `avg_transaction_value`: Average order value
- `revenue_percentage`: % of total revenue

**Key Question Answered**: "Which payment methods are most popular and profitable?"

---

### Query 4: Payment Method Distribution by Region
**Purpose**: See how payment method preferences vary across regions.

**Business Use**:
- Customize payment options by region
- Understand local payment habits
- Optimize payment gateway setup by region

**Output Columns**:
- `region`: Geographic area
- `payment_method`: Payment type
- `transactions`: Count of uses
- `revenue`: Revenue from this combination
- `avg_amount`: Average transaction value

**Key Question Answered**: "Do payment preferences differ by region?"

---

### Query 5: Payment Method Preference by Region
**Purpose**: Show what percentage of each region's transactions use each payment method.

**Business Use**:
- Identify dominant payment methods per region
- Plan region-specific payment promotions
- Ensure payment infrastructure matches regional needs

**Output Columns**:
- `region`: Geographic region
- `payment_method`: Payment type
- `usage_count`: Number of transactions
- `usage_percentage`: % of region's transactions

**Key Question Answered**: "What's the most popular payment method in each region?"

---

## Monthly Revenue Trends

### Query 6: Monthly Revenue Trend
**Purpose**: Track revenue, orders, and customer activity over time.

**Business Use**:
- Identify seasonal patterns
- Forecast future revenue
- Detect anomalies (sudden drops/spikes)
- Plan inventory and staffing accordingly

**Output Columns**:
- `month`: The month being analyzed
- `total_orders`: Transactions in that month
- `unique_customers`: How many different customers purchased
- `monthly_revenue`: Total revenue for the month
- `avg_order_value`: Average transaction size
- `lowest_order`: Smallest transaction
- `highest_order`: Largest transaction

**Key Question Answered**: "How is revenue changing over time?"

---

### Query 7: Monthly Revenue Trend by Region
**Purpose**: See how each region's revenue changes month-to-month.

**Business Use**:
- Identify regions with growth or decline trends
- Understand if seasonal patterns are region-specific
- Make targeted interventions for struggling regions

**Output Columns**:
- `month`: Time period
- `region`: Geographic area
- `monthly_revenue`: Revenue for region that month
- `order_count`: Number of transactions

**Key Question Answered**: "How is each region performing over time?"

---

### Query 8: Monthly Revenue Trend by Payment Method
**Purpose**: Track which payment methods are gaining or losing adoption.

**Business Use**:
- Monitor adoption of new payment methods
- Identify payment method trends
- Plan payment infrastructure upgrades

**Output Columns**:
- `month`: Time period
- `payment_method`: Payment type
- `monthly_revenue`: Revenue from this method that month
- `transaction_count`: Number of uses

**Key Question Answered**: "How are payment method trends changing?"

---

## Customer Analysis

### Query 9: Top Customers by Revenue
**Purpose**: Identify your most valuable customers and their characteristics.

**Business Use**:
- Create VIP/loyalty programs for top customers
- Understand customer value distribution
- Target retention efforts on high-value customers
- Identify expansion opportunities with best customers

**Output Columns**:
- `customer_id`: Unique identifier
- `customer_name`: Name
- `region`: Their location
- `total_orders`: How many purchases
- `total_revenue`: Total value
- `avg_order_value`: Average purchase size
- `first_purchase`: When they started
- `last_purchase`: Most recent activity

**Key Question Answered**: "Who are our most valuable customers?"

---

### Query 10: Top 5 Customers
**Purpose**: Quickly identify the top 5 revenue-generating customers.

**Business Use**:
- Focus on retaining your top earners
- Understand characteristics of best customers
- Create case studies of successful customers

**Output Columns**:
- `customer_id`: Identifier
- `customer_name`: Name
- `region`: Location
- `total_orders`: Purchase count
- `total_revenue`: Total value
- `avg_order_value`: Average purchase

**Key Question Answered**: "Who are our top 5 customers?"

---

### Query 11: Customer Purchase Frequency
**Purpose**: See how often customers are buying and how much they spend.

**Business Use**:
- Identify engaged customers (frequent purchasers)
- Find lapsed customers (haven't purchased recently)
- Plan re-engagement campaigns
- Understand customer lifecycle

**Output Columns**:
- `customer_name`: Name
- `region`: Location
- `purchase_count`: Total transactions
- `total_spent`: Lifetime value
- `avg_spent_per_purchase`: Average transaction size
- `first_order`: When they started
- `recent_order`: Last purchase date

**Key Question Answered**: "Which customers are most engaged?"

---

## Product Analysis

### Query 12: Best-Selling Products
**Purpose**: Identify which products generate the most revenue and reach the most customers.

**Business Use**:
- Ensure adequate inventory for bestsellers
- Create bundles around top products
- Identify products that need promotion
- Understand product performance across customer base

**Output Columns**:
- `product`: Product name
- `units_sold`: Number of purchases
- `total_revenue`: Total revenue from product
- `avg_price`: Average price customers pay
- `min_price` / `max_price`: Price range
- `unique_buyers`: How many different customers bought

**Key Question Answered**: "Which products are most successful?"

---

### Query 13: Top 5 Best-Selling Products
**Purpose**: Quick view of your top 5 revenue-generating products.

**Business Use**:
- Stock appropriately
- Market the bestsellers
- Cross-sell around these products
- Understand customer preferences

**Output Columns**:
- `product`: Product name
- `units_sold`: Number sold
- `total_revenue`: Total value
- `avg_price`: Average price

**Key Question Answered**: "What are our top 5 products?"

---

### Query 14: Product Performance by Region
**Purpose**: See how each product sells in different regions.

**Business Use**:
- Understand regional product preferences
- Stock regions appropriately (some products may be regional hits)
- Create region-specific marketing campaigns
- Identify expansion opportunities

**Output Columns**:
- `product`: Product name
- `region`: Geographic area
- `units_sold`: Number sold in region
- `revenue`: Revenue in region
- `avg_price`: Average price in region

**Key Question Answered**: "How do products perform in different regions?"

---

## Average Order Value Analysis

### Query 15: Average Order Value Overall
**Purpose**: Understand the overall economics of your orders.

**Business Use**:
- Benchmark against industry standards
- Set minimum order values
- Plan pricing strategies
- Understand transaction economics

**Output Columns**:
- `avg_order_value`: Mean transaction value
- `std_deviation`: How much values vary (volatility)
- `min_order`: Smallest transaction
- `max_order`: Largest transaction
- `total_orders`: Number of transactions analyzed

**Key Question Answered**: "What's the typical transaction value?"

---

### Query 16: Average Order Value by Region
**Purpose**: See if customers in different regions buy different amounts.

**Business Use**:
- Adjust pricing or promotions by region
- Understand regional purchasing power
- Identify regions with lower AOV (opportunity for upselling)
- Tailor marketing messages to regional behavior

**Output Columns**:
- `region`: Geographic area
- `avg_order_value`: Mean transaction value
- `std_deviation`: Variability of order values
- `order_count`: Number of orders

**Key Question Answered**: "Do different regions have different spending patterns?"

---

### Query 17: Average Order Value by Payment Method
**Purpose**: Understand if payment method affects spending amount.

**Business Use**:
- Identify which payment methods attract larger purchases
- Consider incentives for lower-performing methods
- Plan payment promotions strategically

**Output Columns**:
- `payment_method`: Payment type
- `avg_order_value`: Mean transaction value
- `transaction_count`: Number of uses
- `total_revenue`: Total from method

**Key Question Answered**: "Do customers spend differently based on payment method?"

---

### Query 18: Average Order Value by Customer
**Purpose**: See how much each customer typically spends per transaction.

**Business Use**:
- Identify high-value customer segments
- Create tiered incentives (VIP, regular, trial)
- Understand customer segments
- Plan personalized offers

**Output Columns**:
- `customer_name`: Name
- `region`: Location
- `avg_order_value`: Their average transaction
- `order_count`: How many purchases
- `total_spent`: Lifetime value

**Key Question Answered**: "How much does each customer typically spend?"

---

## Comprehensive Summary

### Query 19: Sales Performance Summary
**Purpose**: Get a single view of your entire business performance.

**Business Use**:
- Executive dashboard summary
- Year-over-year comparisons
- Quick health check of business
- Share with stakeholders

**Output Columns**:
- `total_customers`: Unique customer count
- `total_orders`: Number of transactions
- `unique_products`: Number of different products sold
- `regions_covered`: Number of markets
- `total_revenue`: Total sales
- `average_order_value`: Mean transaction value
- `first_order_date`: When business started
- `last_order_date`: Most recent transaction

**Key Question Answered**: "What's our overall business performance?"

---

### Query 20: Regional and Payment Method Breakdown
**Purpose**: See the cross-section of regions and payment methods together.

**Business Use**:
- Comprehensive view of all business combinations
- Identify underperforming region-payment combinations
- Plan targeted improvements
- Understand detailed customer segments

**Output Columns**:
- `region`: Geographic area
- `payment_method`: Payment type
- `transaction_count`: Number of transactions
- `revenue`: Total sales
- `customer_count`: Unique customers
- `avg_order_value`: Average transaction

**Key Question Answered**: "How do regions and payment methods interact?"

---

## How to Use This Guide

1. **For specific business questions**: Find the relevant section and use that query
2. **For dashboards**: Combine queries to create comprehensive reports
3. **For analysis**: Run multiple related queries to cross-reference insights
4. **For alerts**: Schedule regular runs and compare results month-to-month
5. **For forecasting**: Use historical trends from monthly queries to predict future performance

## Tips for Best Results

- Always run data quality checks first (schema_and_data_quality.sql)
- Compare periods (month-to-month, region-to-region) to identify trends
- Combine queries (e.g., top customers + their regions + their payment methods)
- Track metrics over time to spot opportunities early
- Share findings with relevant teams (sales, marketing, operations, finance)
