-- ============================================================
--  SALES & CUSTOMER INSIGHTS ANALYSIS
--  SQL Queries for Business Intelligence Dashboard
--  Author: Sirigiri Malakonda Reddy
--  Table : sales_data
-- ============================================================


-- ────────────────────────────────────────────────────────────
--  SECTION 1: SUMMARY KPIs
--  High-level business metrics for the KPI cards in Power BI
-- ────────────────────────────────────────────────────────────

-- Total Revenue
SELECT SUM("Sales") AS total_revenue
FROM sales_data;

-- Total Profit
SELECT SUM("Profit") AS total_profit
FROM sales_data;

-- Total Number of Orders
SELECT COUNT(DISTINCT "Order ID") AS total_orders
FROM sales_data;

-- Total Unique Customers
SELECT COUNT(DISTINCT "Customer ID") AS total_customers
FROM sales_data;

-- All KPIs in one query
SELECT
    SUM("Sales")                        AS total_revenue,
    SUM("Profit")                       AS total_profit,
    COUNT(DISTINCT "Order ID")          AS total_orders,
    COUNT(DISTINCT "Customer ID")       AS total_customers,
    ROUND(SUM("Profit") / NULLIF(SUM("Sales"), 0) * 100, 2) AS profit_margin_pct
FROM sales_data;


-- ────────────────────────────────────────────────────────────
--  SECTION 2: REVENUE BY CATEGORY
--  Identifies which product categories drive the most revenue
-- ────────────────────────────────────────────────────────────

-- Revenue and Profit by Category
SELECT
    "Category",
    SUM("Sales")   AS total_revenue,
    SUM("Profit")  AS total_profit,
    COUNT(*)       AS total_orders
FROM sales_data
GROUP BY "Category"
ORDER BY total_revenue DESC;

-- Revenue by Sub-Category (more granular breakdown)
SELECT
    "Category",
    "Sub-Category",
    SUM("Sales")  AS total_revenue,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Category", "Sub-Category"
ORDER BY total_revenue DESC;


-- ────────────────────────────────────────────────────────────
--  SECTION 3: PRODUCT PERFORMANCE
--  Top sellers and underperforming products
-- ────────────────────────────────────────────────────────────

-- Top 5 Products by Revenue
SELECT
    "Product Name",
    SUM("Sales") AS total_revenue
FROM sales_data
GROUP BY "Product Name"
ORDER BY total_revenue DESC
LIMIT 5;

-- Products with Negative Profit (loss-makers to flag)
SELECT
    "Product Name",
    "Category",
    SUM("Sales")  AS total_revenue,
    SUM("Profit") AS total_profit
FROM sales_data
GROUP BY "Product Name", "Category"
HAVING SUM("Profit") < 0
ORDER BY total_profit ASC;

-- High-value orders (Sales above $1,000)
SELECT
    "Order ID",
    "Customer Name",
    "Product Name",
    "Sales",
    "Profit"
FROM sales_data
WHERE "Sales" > 1000
ORDER BY "Sales" DESC;


-- ────────────────────────────────────────────────────────────
--  SECTION 4: CUSTOMER BEHAVIOR
--  Identifies top buyers and spending patterns
-- ────────────────────────────────────────────────────────────

-- Top 10 Customers by Total Spend
SELECT
    "Customer ID",
    "Customer Name",
    SUM("Sales")            AS total_spent,
    COUNT(DISTINCT "Order ID") AS total_orders
FROM sales_data
GROUP BY "Customer ID", "Customer Name"
ORDER BY total_spent DESC
LIMIT 10;

-- Average Order Value per Customer Segment
SELECT
    "Segment",
    ROUND(AVG("Sales"), 2)          AS avg_order_value,
    SUM("Sales")                    AS total_revenue,
    COUNT(DISTINCT "Customer ID")   AS unique_customers
FROM sales_data
GROUP BY "Segment"
ORDER BY total_revenue DESC;

-- Customers with only one order (low retention signal)
SELECT
    "Customer ID",
    "Customer Name",
    COUNT(DISTINCT "Order ID") AS order_count
FROM sales_data
GROUP BY "Customer ID", "Customer Name"
HAVING COUNT(DISTINCT "Order ID") = 1;


-- ────────────────────────────────────────────────────────────
--  SECTION 5: MONTHLY REVENUE TREND
--  Tracks performance over time and detects seasonality
-- ────────────────────────────────────────────────────────────

-- Monthly Revenue Trend
SELECT
    DATE_TRUNC('month', "Order Date"::DATE) AS month,
    SUM("Sales")                            AS monthly_revenue,
    SUM("Profit")                           AS monthly_profit
FROM sales_data
GROUP BY month
ORDER BY month ASC;

-- Year-over-Year Revenue Comparison
SELECT
    EXTRACT(YEAR FROM "Order Date"::DATE)  AS year,
    SUM("Sales")                           AS annual_revenue,
    SUM("Profit")                          AS annual_profit
FROM sales_data
GROUP BY year
ORDER BY year ASC;
