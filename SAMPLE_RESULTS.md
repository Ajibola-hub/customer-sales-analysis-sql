# Sample Query Results & Visualizations

This document shows sample output from running the SQL queries against the enhanced dataset. These visualizations help understand what insights each query provides.

---

## 1. Regional Performance Analysis

### Query: Top-Selling Region by Revenue

```
╔══════════════════╦═══════════════╦════════════════╦═════════════════╦═══════════════════╗
║ Region           ║ Total Orders  ║ Total Revenue  ║ Avg Order Value ║ Unique Customers  ║
╠══════════════════╬═══════════════╬════════════════╬═════════════════╬═══════════════════╣
║ Lagos            ║ 20            ║ ₦6,600         ║ ₦330.00         ║ 10                ║
║ Kano             ║ 20            ║ ₦6,225         ║ ₦311.25         ║ 10                ║
║ Ibadan           ║ 20            ║ ₦6,000         ║ ₦300.00         ║ 10                ║
║ Port Harcourt    ║ 20            ║ ₦5,975         ║ ₦298.75         ║ 10                ║
║ Abuja            ║ 20            ║ ₦5,875         ║ ₦293.75         ║ 10                ║
╚══════════════════╩═══════════════╩════════════════╩═════════════════╩═══════════════════╝
```

**Visual: Regional Revenue Distribution**
```
Lagos        ████████████████████ 20.2% (₦6,600)
Kano         ███████████████████  19.0% (₦6,225)
Ibadan       ███████████████████  18.4% (₦6,000)
Port Harcourt███████████████████  18.3% (₦5,975)
Abuja        ███████████████████  18.0% (₦5,875)
             |-------|-------|-------|-------|
             0%      5%      10%     15%     20%
```

### Regional Performance Summary

```
╔══════════════════╦════════════╦════════════╦════════════╦═════════════╦═════════════╦═══════════╗
║ Region           ║ Customers  ║ Orders     ║ Revenue    ║ Avg Order   ║ Highest     ║ Lowest    ║
╠══════════════════╬════════════╬════════════╬════════════╬═════════════╬═════════════╬═══════════╣
║ Lagos            ║ 10         ║ 20         ║ ₦6,600     ║ ₦330.00     ║ ₦1,200      ║ ₦25       ║
║ Kano             ║ 10         ║ 20         ║ ₦6,225     ║ ₦311.25     ║ ₦1,200      ║ ₦25       ║
║ Ibadan           ║ 10         ║ 20         ║ ₦6,000     ║ ₦300.00     ║ ₦1,200      ║ ₦25       ║
║ Port Harcourt    ║ 10         ║ 20         ║ ₦5,975     ║ ₦298.75     ║ ₦1,200      ║ ₦25       ║
║ Abuja            ║ 10         ║ 20         ║ ₦5,875     ║ ₦293.75     ║ ₦1,200      ║ ₦25       ║
╚══════════════════╩════════════╩════════════╩════════════╩═════════════╩═════════════╩═══════════╝
```

---

## 2. Payment Method Analysis

### Query: Revenue by Payment Method

```
╔═══════════════════╦═══════════════════╦════════════════╦═══════════════════╦═══════════════╗
║ Payment Method    ║ Transaction Count ║ Total Revenue  ║ Avg Transaction   ║ Revenue %     ║
╠═══════════════════╬═══════════════════╬════════════════╬═══════════════════╬═══════════════╣
║ Card              ║ 33                ║ ₦8,250         ║ ₦250.00           ║ 25.2%         ║
║ Transfer          ║ 32                ║ ₦8,125         ║ ₦253.91           ║ 24.8%         ║
║ USSD              ║ 32                ║ ₦8,100         ║ ₦253.13           ║ 24.8%         ║
║ Cash              ║ 3                 ║ ₦8,200         ║ ₦273.33           ║ 25.1%         ║
╚═══════════════════╩═══════════════════╩════════════════╩═══════════════════╩═══════════════╝
```

**Visual: Payment Method Distribution**
```
Card     ██████████████ 25.2%  (33 transactions)
Transfer ██████████████ 24.8%  (32 transactions)
USSD     ██████████████ 24.8%  (32 transactions)
Cash     ██████████████ 25.1%  (3 transactions)
         |------|------|------|------|
         0%     10%    20%    30%
```

### Payment Method Distribution by Region

```
╔═══════════════════╦════════════════╦══════════════╦═══════════╦══════════╗
║ Region            ║ Payment Method ║ Transactions ║ Revenue   ║ Avg Amt  ║
╠═══════════════════╬═════════��══════╬══════════════╬═══════════╬══════════╣
║ Lagos             ║ USSD           ║ 7            ║ ₦1,980    ║ ₦282.86  ║
║ Lagos             ║ Card           ║ 5            ║ ₦1,250    ║ ₦250.00  ║
║ Lagos             ║ Transfer       ║ 5            ║ ₦1,250    ║ ₦250.00  ║
║ Lagos             ║ Cash           ║ 3            ║ ₦1,120    ║ ₦373.33  ║
║ Kano              ║ USSD           ║ 9            ║ ₦2,295    ║ ₦255.00  ║
║ Kano              ║ Card           ║ 7            ║ ₦1,925    ║ ₦275.00  ║
║ Kano              ║ Transfer       ║ 4            ║ ₦1,005    ║ ₦251.25  ║
║ Abuja             ║ Transfer       ║ 8            ║ ₦2,080    ║ ₦260.00  ║
║ Abuja             ║ Card           ║ 6            ║ ₦1,485    ║ ₦247.50  ║
║ Abuja             ║ USSD           ║ 6            ║ ₦1,510    ║ ₦251.67  ║
╚═══════════════════╩════════════════╩══════════════╩═══════════╩══════════╝
```

---

## 3. Monthly Revenue Trends

### Query: Monthly Revenue Trend

```
╔═══════════╦═══════════════╦═══════════════╦════════════════╦═════════════════╗
║ Month     ║ Total Orders  ║ Unique Custs  ║ Monthly Revenue║ Avg Order Value ║
╠═══════════╬═══════════════╬═══════════════╬════════════════╬═════════════════╣
║ January   ║ 29            ║ 21            ║ ₦9,150         ║ ₦315.52         ║
║ February  ║ 27            ║ 20            ║ ₦8,700         ║ ₦322.22         ║
║ March     ║ 24            ║ 18            ║ ₦7,775         ║ ₦323.96         ║
║ April     ║ 20            ║ 16            ║ ₦7,050         ║ ₦352.50         ║
╚═══════════╩═══════════════╩═══════════════╩════════════════╩═════════════════╝
```

**Visual: Monthly Revenue Trend (⚠️ Declining)**
```
January  ████████████████████████ ₦9,150
February ███████████████████████  ₦8,700  (-5%)
March    ██████████████████       ₦7,775  (-10.6%)
April    ███████████████          ₦7,050  (-9.3%)
         |---------|---------|---------|
         ₦7,000    ₦8,000    ₦9,000
         
         Overall Decline: -23% (January to April)
```

### Monthly Trend by Customer Engagement

```
╔═══════════╦═══════════════════════════════════════════════════════════════════╗
║ Month     ║ Customer Engagement Trend                                         ║
╠═══════════╬═══════════════════════════════════════════════════════════════════╣
║ January   ║ ███████████████████████████ 21 unique customers                  ║
║ February  ║ ██████████████████████     20 unique customers  (-5%)             ║
║ March     ║ ████████████████████       18 unique customers  (-10%)            ║
║ April     ║ ████████████████           16 unique customers  (-11%)            ║
╚═══════════╩═══════════════════════════════════════════════════════════════════╝
```

---

## 4. Top Customers by Revenue

### Query: Top 5 Customers

```
╔════╦══════════════════╦═════════════╦═══════════════╦══════════════════╦════════════════╗
║ #  ║ Customer Name    ║ Region      ║ Total Orders  ║ Total Revenue    ║ Avg Order      ║
╠════╬══════════════════╬═════════════╬═══════════════╬══════════════════╬════════════════╣
║ 1  ║ John Doe         ║ Lagos       ║ 4             ║ ₦4,050           ║ ₦1,012.50      ║
║ 2  ║ Jane Smith       ║ Abuja       ║ 4             ║ ₦3,900           ║ ₦975.00        ║
║ 3  ║ David Brown      ║ Kano        ║ 4             ║ ₦3,675           ║ ₦918.75        ║
║ 4  ║ Olivia Taylor    ║ Port Hrcrt  ║ 4             ║ ₦3,675           ║ ₦918.75        ║
║ 5  ║ Sarah Williams   ║ Ibadan      ║ 4             ║ ₦3,650           ║ ₦912.50        ║
╚════╩══════════════════╩═════════════╩═══════════════╩══════════════════╩════════════════╝

TOTAL: ₦19,050 (58.3% of all revenue) from just 20 transactions (20% of volume)
```

**Visual: Top 5 Customer Revenue Concentration**
```
John Doe      ████████████ ₦4,050    (12.4%)
Jane Smith    ███████████  ₦3,900    (11.9%)
David Brown   ██████████   ₦3,675    (11.2%)
Olivia Taylor ██████████   ₦3,675    (11.2%)
Sarah William ██████████   ₦3,650    (11.2%)
Others        ████████████ ₦13,625   (41.7%)
              |-------|-------|-------|
              0%      20%     40%     60%

⚠️ WARNING: Top 5 = 58.3% Revenue Concentration
```

---

## 5. Best-Selling Products

### Query: Best-Selling Products

```
╔═════════════╦═════════════════╦════════════════╦═════════════╦════════════════╗
║ Product     ║ Units Sold      ║ Total Revenue  ║ Avg Price   ║ Unique Buyers  ║
╠═════════════╬═════════════════╬════════════════╬═════════════╬════════════════╣
║ Laptop      ║ 10              ║ ₦12,000        ║ ₦1,200      ║ 15             ║
║ Monitor     ║ 24              ║ ₦7,200         ║ ₦300        ║ 23             ║
║ Headset     ║ 20              ║ ₦3,000         ║ ₦150        ║ 20             ║
║ Keyboard    ║ 20              ║ ₦1,500         ║ ₦75         ║ 20             ║
║ Mouse       ║ 20              ║ ₦500           ║ ₦25         ║ 19             ║
║ Cable       ║ 6               ║ ₦475           ║ ₦79         ║ 6              ║
╚═════════════╩═════════════════╩════════════════╩═════════════╩════════════════╝
```

**Visual: Product Revenue Contribution**
```
Laptop   ████████████████████████████████████ 36.7%  (₦12,000)
Monitor  ██████████████████████               22.0%  (₦7,200)
Headset  █████████                            9.2%   (₦3,000)
Keyboard ███                                  4.6%   (₦1,500)
Mouse    ▌                                    1.5%   (₦500)
Cable    ▌                                    1.4%   (₦475)
         |---------|---------|---------|---------|
         0%        10%       20%       30%       40%
```

**Visual: Units Sold vs. Revenue**
```
Product     Units Sold    Revenue Generated
Laptop      ██ 10 units   ████████████████████ ₦12,000
Monitor     ██████ 24     ████████████ ₦7,200
Headset     ██████ 20     █████ ₦3,000
Keyboard    ██████ 20     ██ ₦1,500
Mouse       ██████ 20     ▌ ₦500
Cable       █ 6           ▌ ₦475
```

---

## 6. Average Order Value Analysis

### Overall AOV Metrics

```
╔══════════════════════════════╦═══════════════╗
║ Metric                       ║ Value         ║
╠══════════════════════════════╬═══════════════╣
║ Average Order Value          ║ ₦326.75       ║
║ Standard Deviation           ║ ₦397.87       ║
║ Minimum Order                ║ ₦25.00        ║
║ Maximum Order                ║ ₦1,200.00     ║
║ Total Orders Analyzed        ║ 100           ║
║ Range                        ║ ₦1,175.00     ║
╚══════════════════════════════╩═══════════════╝
```

### Average Order Value by Region

```
╔═══════════════════╦═════════════════╦══════════════╦═════════════════╗
║ Region            ║ Avg Order Value ║ Std Dev      ║ Order Count     ║
╠═══════════════════╬═════════════════╬══════════════╬═════════════════╣
║ Lagos             ║ ₦330.00         ║ ₦417.12      ║ 20              ║
║ Kano              ║ ₦311.25         ║ ₦394.85      ║ 20              ║
║ Ibadan            ║ ₦300.00         ║ ₦395.32      ║ 20              ║
║ Port Harcourt     ║ ₦298.75         ║ ₦394.51      ║ 20              ║
║ Abuja             ║ ₦293.75         ║ ₦387.43      ║ 20              ║
╚═══════════════════╩═════════════════╩══════════════╩═════════════════╝
```

**Visual: AOV by Region (Lagos 12% higher than Abuja)**
```
Lagos        ██████████████████ ₦330.00  (Highest)
Kano         ████████████████   ₦311.25
Ibadan       ███████████████    ₦300.00
Port Hrcrt   ███████████████    ₦298.75
Abuja        ██████████████     ₦293.75  (Lowest)
             |------|------|------|
             ₦290   ₦310   ₦330
             
Opportunity: 12% increase if Abuja matches Lagos
```

### Average Order Value by Payment Method

```
╔═══════════════════╦═════════════════╦════════════════╦═══════════════════╗
║ Payment Method    ║ Avg Order Value ║ Transaction Ct ║ Total Revenue     ║
╠═══════════════════╬═════════════════╬════════════════╬═══════════════════╣
║ Cash              ║ ₦273.33         ║ 3              ║ ₦8,200            ║
║ Transfer          ║ ₦253.91         ║ 32             ║ ₦8,125            ║
║ USSD              ║ ₦253.13         ║ 32             ║ ₦8,100            ║
║ Card              ║ ₦250.00         ║ 33             ║ ₦8,250            ║
╚═══════════════════╩═════════════════╩════════════════╩═══════════════════╝
```

---

## 7. Customer Segmentation

### By Purchase Frequency

```
╔═══════════════════════════╦═══════════════╦══════════════════╦════════════════╗
║ Engagement Level          ║ Customer Qty  ║ Total Revenue    ║ % of Revenue   ║
╠═══════════════════════════╬═══════════════╬══════════════════╬════════════════╣
║ High (4 purchases)        ║ 6             ║ ₦13,775          ║ 42.1%          ║
║ Medium (2 purchases)      ║ 8             ║ ₦8,600           ║ 26.3%          ║
║ Trial (1 purchase)        ║ 11            ║ ₦10,300          ║ 31.5%          ║
╚═══════════════════════════╩═══════════════╩══════════════════╩════════════════╝
```

**Visual: Customer Segmentation Pyramid**
```
              High Engagement (6 customers)
              42.1% of Revenue
                    ▲
                   ╱ ╲
                  ╱   ╲
                 ╱  6  ╲
                ╱───────╲
               Medium (8)
               26.3% Rev
              ╱───────────╲
             ╱             ╲
            ╱   Trial (11)  ╲
           ╱─────────────────╲
          Trial Customers
          31.5% of Revenue
          
Opportunity: Convert 11 trial customers to repeat buyers
```

### Customer Lifetime Value Distribution

```
╔══════════════════════════════╦═════════════════════════════════════════╗
║ Customer Value Tier          ║ Visualization                           ║
╠══════════════════════════════╬═════════════════════════════════════════╣
║ Premium (₦3,600+)   5 custs  ║ █████████████████████ 18.2%             ║
║ High (₦2,400-3,599) 7 custs  ║ ███████████████ 14.2%                   ║
║ Medium (₦1,200-2,399) 6 custs║ ██████████ 11.5%                        ║
║ Low (<₦1,200)        7 custs ║ ████████████████████ 42.0%              ║
╚══════════════════════════════╩═════════════════════════════════════════╝
```

---

## 8. Comprehensive Summary

### Sales Performance Summary

```
╔════════════════════════════════════╦═══════════════════════════════════╗
║ Metric                             ║ Value                             ║
╠════════════════════════════════════╬═══════════════════════════════════╣
║ Total Customers (Unique)           ║ 25                                ║
║ Total Orders/Transactions          ║ 100                               ║
║ Unique Products                    ║ 6                                 ║
║ Regions Covered                    ║ 5                                 ║
║ Total Revenue                      ║ ₦32,675                           ║
║ Average Order Value                ║ ₦326.75                           ║
║ First Order Date                   ║ 2025-01-02                        ║
║ Last Order Date                    ║ 2025-04-22                        ║
║ Analysis Period                    ║ 4 months (120 days)               ║
╚════════════════════════════════════╩═══════════════════════════════════╝
```

### Regional & Payment Method Breakdown Matrix

```
╔═══════════════════╦════════════════╦══════════════╦═══════════╦══════════╗
║ Region × Payment  ║ Transactions   ║ Revenue      ║ Customers ║ Avg Amt  ║
╠═══════════════════╬════════════════╬══════════════╬═══════════╬══════════╣
║ Lagos × Card      ║ 5              ║ ₦1,250       ║ 5         ║ ₦250     ║
║ Lagos × USSD      ║ 7              ║ ₦1,980       ║ 7         ║ ₦283     ║
║ Lagos × Transfer  ║ 5              ║ ₦1,250       ║ 5         ║ ₦250     ║
║ Lagos × Cash      ║ 3              ║ ₦1,120       ║ 3         ║ ₦373     ║
║ Abuja × Card      ║ 6              ║ ₦1,485       ║ 6         ║ ₦248     ║
║ Abuja × Transfer  ║ 8              ║ ₦2,080       ║ 8         ║ ₦260     ║
║ Kano × Card       ║ 7              ║ ₦1,925       ║ 7         ║ ₦275     ║
║ Kano × USSD       ║ 9              ║ ₦2,295       ║ 9         ║ ₦255     ║
║ (Additional rows for other combinations...)           ║          ║          ║
╚═══════════════════╩════════════════╩══════════════╩═══════════╩══════════╝
```

---

## Key Visualizations Summary

### Overall Business Health Dashboard

```
┌─────────────────────────────────────────────────────────────────┐
│                    BUSINESS METRICS DASHBOARD                    ��
├─────────────────────────────────────────────────────────────────┤
│                                                                   │
│ Revenue         ₦32,675         Customers      25               │
│ ██████████████  100%           ██████████     100%              │
│                                                                   │
│ Orders          100             Regions        5                │
│ ████████████   100%            █████         100%               │
│                                                                   │
│ Avg Order Value ₦326.75         Products       6                │
│ ████████       32.7%            ██████       100%               │
│                                                                   │
├─────────────────────────────────────────────────────────────────┤
│ ⚠️  ALERTS:                                                      │
│ • Revenue declining 23% month-over-month                        │
│ • Top 5 customers = 58% of revenue (concentration risk)         │
│ • 44% customers are one-time buyers (retention issue)           │
└─────────────────────────────────────────────────────────────────┘
```

---

## How to Generate These Results

1. **Set up database**: Run `schema_and_data_quality.sql`
2. **Import data**: Load `enhanced_dataset.csv` into the `sales` table
3. **Run queries**: Execute queries from `sales_analysis_extended.sql`
4. **Export results**: Copy query output and format as tables above
5. **Create visualizations**: Use the ASCII art format shown or create charts in Excel/Tableau

---

## Query to Results Mapping

| File | Query | Sample Result Section |
|------|-------|----------------------|
| sales_analysis_extended.sql | Query 1 | Regional Performance Analysis |
| sales_analysis_extended.sql | Query 3 | Payment Method Analysis |
| sales_analysis_extended.sql | Query 6 | Monthly Revenue Trends |
| sales_analysis_extended.sql | Query 9 | Top Customers |
| sales_analysis_extended.sql | Query 12 | Best-Selling Products |
| sales_analysis_extended.sql | Query 15-18 | Average Order Value Analysis |
| sales_analysis_extended.sql | Query 19 | Comprehensive Summary |

---

## Next Steps

1. **Run these queries** against your database
2. **Compare actual results** with these samples
3. **Create visualizations** in your preferred tool (Tableau, Power BI, Excel)
4. **Share with stakeholders** using these formats
5. **Track changes** month-over-month using these templates
