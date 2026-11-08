# 🛒 Retail Inventory & Revenue Analytics

### End-to-End Data Analytics Project | Microsoft Excel • MySQL • Power BI

An end-to-end data analytics project focused on analyzing retail sales, revenue, profitability, product performance, store performance, and inventory health using Microsoft Excel, MySQL, and Power BI.

---

## 📊 Dashboard Preview

![Retail Inventory & Revenue Dashboard](Retail_Inventory_Revenue_Dashboard_Preview.png)

---

## 📌 Project Overview

The **Retail Inventory & Revenue Analytics** project analyzes a synthetic retail portfolio dataset covering the period from January 2025 to December 2025.

The project combines four interconnected datasets: Sales, Products, Stores, and Inventory. The objective is to transform raw retail data into meaningful business insights through data exploration, SQL-based analysis, KPI calculations, and interactive Power BI visualizations.

This project demonstrates an end-to-end data analytics workflow, from dataset preparation and database management to business analysis and dashboard development.

## 🎯 Project Objectives

- Analyze overall sales and revenue performance.
- Evaluate total profit and profit margins.
- Identify top-performing products and product categories.
- Compare revenue performance across retail stores and regions.
- Analyze monthly revenue trends.
- Monitor inventory levels and identify low-stock combinations.
- Evaluate closing inventory value and stock availability.
- Develop an interactive Power BI dashboard for business decision-making.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Dataset exploration, KPI calculations and business analysis |
| MySQL 8.4 | Relational database management and SQL analysis |
| Power BI Desktop | Interactive dashboards and data visualization |
| DAX | Calculated measures and KPI development |
| GitHub | Project documentation and version control |

## 📁 Dataset Overview

The project uses a synthetic retail dataset containing four interconnected tables.

| Dataset | Records | Description |
|---|---:|---|
| Sales | 670 | Sales transactions and revenue details |
| Products | 30 | Product names, categories, pricing and suppliers |
| Stores | 6 | Store names, regions and geographical details |
| Inventory | 180 | Product-store inventory and stock information |
| **Total** | **886** | **Combined records** |

**Reporting Period:** 01 January 2025 – 31 December 2025  
**Currency:** Indian Rupee (INR)

The Inventory dataset represents a year-end inventory snapshot dated 31 December 2025.

## 📈 Key Performance Indicators (KPIs)

The following business KPIs were calculated and validated during the analysis.

| KPI | Result |
|---|---:|
| Total Net Revenue | ₹7,71,685.10 |
| Total Profit | ₹3,12,915.10 |
| Total Orders | 420 |
| Total Units Sold | 1,598 |
| Average Order Value | ₹1,837.35 |
| Profit Margin | 40.55% |
| Closing Stock Units | 6,399 |
| Closing Inventory Value | ₹21,94,689.00 |
| Low-Stock Combinations | 26 |

## 📊 1. Microsoft Excel Analysis

Excel was used for initial dataset exploration, calculations, validation, and business analysis.

### Key Activities

- Explored and understood the four datasets.
- Reviewed sales transactions and product information.
- Calculated total revenue, cost and profit.
- Performed product-wise revenue and profit analysis.
- Identified the top 5 products by revenue.
- Conducted category-wise performance analysis.
- Calculated monthly revenue.
- Analyzed closing inventory and low-stock products.
- Performed profit reconciliation and KPI validation.

### Workbook Sheets

The Excel workbook contains the following worksheets:

- Overview
- Sales
- Sales_Analysis
- Products
- Stores
- Inventory
- Data_Dictionary

## 🗄️ 2. MySQL Analysis

MySQL 8.4 was used to create a relational database named `retail_inventory` containing four interconnected tables.

### Database Tables

1. `sales`
2. `products`
3. `stores`
4. `inventory`

### SQL Concepts & Techniques

- SELECT, WHERE and ORDER BY
- GROUP BY and Aggregate Functions
- INNER JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- ROW_NUMBER()
- COUNT, SUM and AVG
- Monthly and Category-wise Analysis
- Region-wise and Store-wise Performance
- Top Products Analysis
- Inventory Analysis
- Data Quality Checks

### Business Questions Answered

- What is the overall revenue and total profit?
- How does revenue change month by month?
- Which product categories generate the highest revenue?
- Which regions and stores perform best?
- What are the top-performing products in each category?
- How many unique orders and units were sold?
- Which product-store combinations require stock replenishment?
- Are there any missing or duplicate key values?

## 📉 3. Power BI Dashboard

An interactive Power BI dashboard was developed using MySQL as the data source.

### Dashboard Components

**Six KPI Cards**

- Total Revenue
- Total Profit
- Total Orders
- Units Sold
- Current Stock
- Low Stock Products

**Four Data Visualizations**

| Visualization | Chart Type | Business Purpose |
|---|---|---|
| Monthly Revenue Trend | Line Chart | Analyze monthly revenue patterns |
| Revenue by Category | Bar Chart | Compare category-wise revenue |
| Inventory Stock Status | Doughnut Chart | Monitor healthy and reorder stock |
| Store-wise Revenue | Bar Chart | Compare individual store performance |

### Interactive Filters

- Region
- Category
- Store
- Order Date

### DAX Measures

The dashboard includes calculated measures for:

- Total Revenue
- Total Profit
- Total Orders
- Units Sold
- Current Stock
- Low Stock Combinations
- Inventory Value
- Inventory Turnover

### Data Modeling

The Power BI data model connects the four tables using one-to-many relationships:

- Products → Sales
- Stores → Sales
- Products → Inventory
- Stores → Inventory

## 💡 Key Business Insights

Based on the dataset analysis and Power BI dashboard:

1. The business generated approximately ₹7.72 lakh in net revenue and ₹3.13 lakh in total profit.
2. The overall profit margin was 40.55%.
3. A total of 1,598 units were sold across 420 unique orders.
4. Home & Kitchen was the highest revenue-generating product category.
5. Pink City Outlet recorded the highest store-wise revenue.
6. Out of 180 product-store inventory combinations, 154 were marked Healthy and 26 required Reorder.
7. Low-stock combinations represented approximately 14.44% of the inventory records.

## 📂 Repository Structure

```text
Retail-Inventory-Revenue-Analytics/
│
├── Dataset/
│   │
│   ├── CSV/
│   │   ├── Inventory.csv
│   │   ├── Products.csv
│   │   ├── Sales.csv
│   │   ├── Stores.csv
│   │   └── .gitkeep
│   │
│   ├── DATASET_NOTES.txt
│   └── Retail_Inventory_Revenue_Dataset.xlsx
│
├── SQL/
│   └── Retail_Inventory_Analysis.sql
│
├── Retail_Inventory_Revenue_Dashboard.pbix
│
├── Retail_Inventory_Revenue_Dashboard_Preview.png
│
└── README.md
```

## 📥 Project Files

Access the project resources directly:

| Resource | Link |
|---|---|
| Excel Workbook | [Download Excel Dataset](Dataset/Retail_Inventory_Revenue_Dataset.xlsx) |
| Dataset Notes | [View Dataset Notes](Dataset/DATASET_NOTES.txt) |
| Sales Data | [Sales.csv](Dataset/CSV/Sales.csv) |
| Products Data | [Products.csv](Dataset/CSV/Products.csv) |
| Stores Data | [Stores.csv](Dataset/CSV/Stores.csv) |
| Inventory Data | [Inventory.csv](Dataset/CSV/Inventory.csv) |
| SQL Analysis | [View SQL Queries](SQL/Retail_Inventory_Analysis.sql) |
| Power BI Dashboard | [Download PBIX File](Retail_Inventory_Revenue_Dashboard.pbix) |
| Dashboard Preview | [View Dashboard Image](Retail_Inventory_Revenue_Dashboard_Preview.png) |

## 🚀 Project Workflow

1. Explored the retail datasets using Microsoft Excel.
2. Calculated and validated the key business KPIs.
3. Created the relational database using MySQL.
4. Imported CSV datasets into MySQL tables.
5. Performed SQL-based business analysis.
6. Connected MySQL with Power BI Desktop.
7. Created table relationships and DAX measures.
8. Designed an interactive Power BI dashboard.
9. Documented and published the complete project on GitHub.

## ⚙️ How to Explore This Project

1. Clone or download this GitHub repository.
2. Explore the Excel workbook and dataset documentation.
3. Import the CSV files into your MySQL database.
4. Execute the SQL analysis script after configuring the database and local file paths.
5. Open the Power BI `.pbix` file in Power BI Desktop.
6. Configure your MySQL connection and credentials before refreshing the dashboard.

**Note:** This project was developed using a local MySQL database. Connection details and local file paths may need to be adjusted on another system.

## 👨‍💻 Author

**Ujjwal Kumar**

B.Tech Computer Science Engineering Student  
Aspiring Data Analyst | BI Analyst

**GitHub:** [ujjwal-kumar12](https://github.com/ujjwal-kumar12)

---

⭐ If you find this project useful, feel free to explore the repository and its analysis files.
