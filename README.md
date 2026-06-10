# 📊 Sales & Customer Insights Dashboard

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)

> An end-to-end business intelligence project analyzing e-commerce sales data to uncover revenue trends, customer behavior, and top-performing products — built with Excel, SQL, and Power BI.

---

## 📌 Table of Contents

- [Overview](#-overview)
- [Business Objective](#-business-objective)
- [Key Insights](#-key-insights)
- [Dashboard Preview](#-dashboard-preview)
- [Project Structure](#-project-structure)
- [Tools & Technologies](#-tools--technologies)
- [Dashboard Features](#-dashboard-features)
- [Data Pipeline](#-data-pipeline)
- [SQL Analysis](#-sql-analysis)
- [Dataset & Dashboard Access](#-dataset--dashboard-access)
- [How to Run](#-how-to-run)
- [Author](#-author)

---

## 🧭 Overview

This project simulates a real-world e-commerce analytics scenario, working through the full data analytics workflow — from raw data cleaning in Excel, business logic analysis in SQL, to final storytelling in an interactive Power BI dashboard.

The project covers three core areas:
- **Revenue Analysis** — where is money coming from and how is it trending?
- **Customer Behavior** — who are the top buyers and how do they shop?
- **Product Performance** — which products and categories drive results?

---

## 🎯 Business Objective

| # | Objective |
|---|-----------|
| 1 | Identify top-performing product categories and individual products |
| 2 | Analyze customer purchasing patterns and high-value buyers |
| 3 | Track monthly revenue trends and detect seasonality |
| 4 | Support business decision-making with clear, actionable data insights |

---

## 💡 Key Insights

| # | Insight |
|---|---------|
| 1 | 🏆 A small number of product categories drive the majority of total revenue |
| 2 | 👤 Customer spending is heavily concentrated among the top buyers |
| 3 | 📅 Monthly revenue shows clear fluctuations indicating seasonal trends |
| 4 | 📦 Top 5 products significantly outperform the rest of the catalog |
| 5 | 🔻 Some products generate high sales volume but low or negative profit |

---

## 📷 Dashboard Preview

![Dashboard](Advanced_Sales_Customer_Insights.png)

> *Interactive Power BI dashboard showing revenue trends, customer segmentation, product performance, and monthly sales patterns.*

---

## 📁 Project Structure

```
sales-customer-insights-dashboard/
│
├── 📂 data/
│   └── dataset.xlsx                          # Cleaned source data (Excel)
│
├── 📂 sql/
│   └── sql_queries.sql                       # All SQL queries with comments
│
├── 📂 reports/
│   └── dashboard.pbix                        # Power BI dashboard file
│
├── 📂 docs/
│   ├── BRD.docx                              # Business Requirements Document
│   ├── FRD.docx                              # Functional Requirements Document
│   └── NFRD.docx                             # Non-Functional Requirements Document
│
├── 📂 assets/
│   └── Advanced_Sales_Customer_Insights.png  # Dashboard preview image
│
└── README.md                                 # You are here
```

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Excel** | Data cleaning, formatting, and initial exploration |
| **SQL (PostgreSQL syntax)** | Data querying, aggregations, and business logic |
| **Power BI Desktop** | Interactive dashboard and data visualization |

---

## 📊 Dashboard Features

The Power BI dashboard includes:

- **KPI Cards** — Total Revenue, Total Orders, Unique Customers at a glance
- **Revenue by Category** — Bar chart comparing product category performance
- **Top 5 Products by Sales** — Highlights highest revenue-generating items
- **Monthly Revenue Trend** — Time-series line chart showing growth and seasonality
- **Customer Spending Distribution** — Identifies high-value vs low-value buyers
- **Profit vs Sales Scatter** — Spots high-revenue but low-margin products

---

## 🔄 Data Pipeline

```
Raw Dataset (Excel)
      │
      ▼
Data Cleaning (Excel)
  - Remove duplicates
  - Handle nulls
  - Standardize date formats
  - Validate column types
      │
      ▼
SQL Analysis (PostgreSQL)
  - Revenue and profit aggregations
  - Customer behavior analysis
  - Product and category ranking
  - Monthly trend queries
      │
      ▼
Power BI Dashboard
  - Import cleaned data
  - Build calculated measures (DAX)
  - Design visuals and layout
  - Publish interactive report
```

---

## 🔍 SQL Analysis

All queries are in [`sql/sql_queries.sql`](sql/sql_queries.sql). Key analyses performed:

- Total revenue, profit, and order count (summary KPIs)
- Revenue breakdown by product category
- Top 5 products by sales
- Monthly revenue trend
- Customer spending analysis and high-value buyer identification
- Products with negative profit margins
- High-value orders (Sales > $1,000)

---

## 📂 Dataset & Dashboard Access

Due to file size limitations, the dashboard and dataset are hosted externally:

👉 **Dashboard (.pbix):** [Google Drive Link](https://drive.google.com/drive/folders/1nHvFR19KTqadxst6PEAoCTfadGqvYtnC?usp=drive_link)

👉 **Dataset:** [Google Drive Link](https://drive.google.com/drive/folders/1Ceq3Vza5ybtLzRNUdE-U84WLTTHYNFUm?usp=drive_link)

---

## ▶️ How to Run

### Power BI Dashboard
1. Download `dashboard.pbix` from the Google Drive link above
2. Open with **Power BI Desktop** (free download at [powerbi.microsoft.com](https://powerbi.microsoft.com))
3. If prompted, update the data source path to point to `data/dataset.xlsx`
4. Click **Refresh** to reload the data

### SQL Queries
1. Import `data/dataset.xlsx` into your SQL database as a table named `sales_data`
2. Open [`sql/sql_queries.sql`](sql/sql_queries.sql) in your SQL editor
3. Run queries individually or as a batch

---

## 👤 Author

**Sirigiri Malakonda Reddy**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin)](https://linkedin.com)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-181717?style=flat&logo=github)](https://github.com/sirigiri063)

---

## 📄 License

This project uses publicly available e-commerce sales data for educational and portfolio purposes.

---

*Built as a portfolio project to demonstrate end-to-end data analytics skills.*
