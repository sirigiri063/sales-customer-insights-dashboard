# Sales & Customer Insights Dashboard

> End-to-end e-commerce analytics — from raw SQL queries to an interactive Power BI dashboard that surfaces revenue trends, customer behavior, and product performance.

![Dashboard Preview](assets/dashboard-preview.png)

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Business Objectives](#business-objectives)
3. [Key Insights](#key-insights)
4. [Tech Stack](#tech-stack)
5. [Project Structure](#project-structure)
6. [Getting Started](#getting-started)
7. [Data Sources](#data-sources)
8. [Dashboard Access](#dashboard-access)
9. [Documentation](#documentation)
10. [License](#license)

---

## Project Overview

This project delivers a fully interactive Power BI dashboard built on an e-commerce dataset. The analysis pipeline covers data extraction with SQL, light transformation in Excel, and visual storytelling in Power BI — enabling business stakeholders to explore sales performance and customer trends at a glance.

**Scope:** Historical e-commerce transactions  
**Audience:** Business analysts, product managers, and decision-makers  
**Deliverable:** Interactive `.pbix` dashboard + supporting SQL scripts and business documents

---

## Business Objectives

| # | Objective |
|---|-----------|
| 1 | Identify top-performing product categories and individual SKUs |
| 2 | Segment customers by purchase frequency and lifetime value |
| 3 | Track monthly revenue trends and detect seasonal patterns |
| 4 | Surface actionable insights to guide inventory and marketing decisions |

---

## Key Insights

- **Category concentration** — A small number of product categories drive the majority of total revenue, pointing to high-leverage restocking priorities.
- **Customer concentration** — Top-tier buyers account for a disproportionate share of spending, signalling an opportunity for loyalty or retention programs.
- **Seasonal fluctuation** — Monthly revenue shows clear peaks and troughs, enabling smarter promotional calendar planning.

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| **Power BI** | Interactive dashboard and data visualisation |
| **SQL** | Data extraction, aggregation, and exploratory analysis |
| **Excel** | Light data cleaning and staging |

---

## Project Structure

```
sales-customer-insights-dashboard/
│
├── assets/                         # Screenshots and visual assets
│   └── dashboard-preview.png       # Dashboard thumbnail (used in README)
│
├── data/                           # Raw and processed data files
│   ├── raw/                        # Original source files (do not modify)
│   └── processed/                  # Cleaned/transformed outputs
│
├── sql/                            # SQL analysis scripts
│   ├── 01_revenue_by_category.sql  # Revenue breakdown by product category
│   ├── 02_customer_segmentation.sql# RFM / spend-tier customer analysis
│   ├── 03_monthly_trends.sql       # Month-over-month revenue trends
│   └── 04_top_products.sql         # Top SKUs by revenue and volume
│
├── dashboard/                      # Power BI files
│   └── README.md                   # Link to external .pbix (Google Drive)
│
├── docs/                           # Business and technical documents
│   ├── BRD.pdf                     # Business Requirements Document
│   ├── FRD.pdf                     # Functional Requirements Document
│   └── NFRD.pdf                    # Non-Functional Requirements Document
│
└── README.md                       # You are here
```

---

## Getting Started

### Prerequisites

- [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)
- A SQL client (e.g. DBeaver, Azure Data Studio) to run the SQL scripts
- Microsoft Excel 2016+ or Google Sheets for the staging files

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/sirigiri063/sales-customer-insights-dashboard.git
   cd sales-customer-insights-dashboard
   ```

2. **Load the dataset**  
   Download the dataset from the link in [Data Sources](#data-sources) and place the files in `data/raw/`.

3. **Run the SQL scripts**  
   Execute the scripts in `sql/` against your local database in numbered order (`01_` → `04_`). Each script is self-contained with a header comment explaining its purpose and expected output.

4. **Open the dashboard**  
   Download the `.pbix` file from the link in [Dashboard Access](#dashboard-access) and open it in Power BI Desktop. Update the data source connection to point to your local files.

---

## Data Sources

> Files are hosted externally due to GitHub's size limits.

| Asset | Link |
|-------|------|
| Dataset (CSV / Excel) | [Google Drive →](https://drive.google.com/drive/folders/1Ceq3Vza5ybtLzRNUdE-U84WLTTHYNFUm?usp=drive_link) |

---

## Dashboard Access

| Asset | Link |
|-------|------|
| Power BI Dashboard (`.pbix`) | [Google Drive →](https://drive.google.com/drive/folders/1nHvFR19KTqadxst6PEAoCTfadGqvYtnC?usp=drive_link) |

---

## Documentation

Full project documentation lives in the `docs/` folder:

| Document | Description |
|----------|-------------|
| `BRD.pdf` | Business Requirements Document — scope, stakeholders, success criteria |
| `FRD.pdf` | Functional Requirements Document — feature specs and data definitions |
| `NFRD.pdf` | Non-Functional Requirements — performance, security, and maintainability |

---

## License

This project is for portfolio and educational purposes. Dataset is sourced from publicly available e-commerce data. Feel free to fork and adapt with attribution.

---

<p align="center">Built by <a href="https://github.com/sirigiri063">sirigiri063</a></p>
