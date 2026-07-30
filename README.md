# 📦 Supply Chain & Inventory Analytics

An end-to-end Data Analytics project that analyzes supply chain and inventory operations using **Python**, **PostgreSQL**, and **Power BI**. The project demonstrates the complete analytics workflow—from data cleaning and validation to SQL-based business analysis and interactive dashboard creation.

---

## 📖 Project Overview

This project focuses on analyzing supply chain and inventory performance by integrating data from multiple business entities:

- Customers
- Products
- Suppliers
- Sales
- Inventory

The objective is to generate business insights related to sales performance, inventory management, supplier efficiency, and customer behavior using interactive visualizations and SQL analytics.

---

## 🛠️ Tech Stack

- **Python**
  - Pandas
  - NumPy
  - SQLAlchemy

- **Database**
  - PostgreSQL
  - pgAdmin

- **Business Intelligence**
  - Power BI
  - DAX

---

## 📂 Project Structure

```
📦 Supply-Chain-Inventory-Analytics
│
├── Supply-Chain and Inventory.ipynb      # Data cleaning & preprocessing
├── Supply-Chain and Inventory Analytics.sql # SQL queries & analysis
├── Supply-Chain & Inventory Analysis.pbix   # Interactive Power BI dashboard
├── README.md
```

---

## 📊 Dataset

The project consists of five relational datasets:

| Table | Description |
|--------|-------------|
| Customers | Customer demographic and purchase information |
| Products | Product catalog with pricing and supplier details |
| Suppliers | Supplier performance metrics |
| Sales | Sales transactions |
| Inventory | Warehouse inventory and stock information |

---

## 🧹 Data Cleaning

The datasets were cleaned using Python by performing:

- Handling missing values
- Removing duplicate records
- Standardizing text values
- Correcting data types
- Business rule validation
- Invalid value detection
- Outlier detection using IQR
- Final dataset validation

---

## 🗄️ Database

The cleaned datasets were loaded into PostgreSQL and normalized into relational tables.

Relationships were created between:

- Customers → Sales
- Products → Sales
- Products → Inventory
- Suppliers → Products

---

## 📈 SQL Analysis

The SQL analysis includes:

### Basic Queries

- SELECT
- WHERE
- ORDER BY
- LIMIT

### Aggregate Functions

- SUM
- AVG
- COUNT
- MAX

### GROUP BY & HAVING

Revenue analysis

Order analysis

Customer analysis

### JOINS

- INNER JOIN
- Multi-table JOIN

### Subqueries

Business-driven analysis

### Common Table Expressions (CTEs)

- Customer Revenue
- Product Revenue
- Monthly Revenue

### Window Functions

- RANK()
- Running Revenue
- Revenue Contribution (%)

---

## 📊 Power BI Dashboard

The dashboard consists of **three interactive pages**.

### 📌 Page 1 – Executive Overview

- Total Revenue
- Total Profit
- Profit Margin
- Total Orders
- Total Customers
- Total Products
- Revenue Trend
- Profit Trend
- Revenue by Sales Channel
- Revenue by Payment Method

---

### 📌 Page 2 – Sales & Customer Analytics

- Top 10 Products
- Revenue by Category
- Revenue by City
- Orders by Status
- Average Discount
- Revenue per Customer
- Profit per Order

---

### 📌 Page 3 – Inventory & Supplier Analytics

- Inventory Value
- Opening Stock
- Closing Stock
- Warehouse Utilization
- Products to Reorder
- Supplier Rating
- Lead Time
- Defect Rate
- On-Time Delivery

---

## 📈 Key DAX Measures

- Total Revenue
- Total Profit
- Total Orders
- Total Customers
- Profit Margin %
- Average Order Value
- Revenue per Customer
- Inventory Value
- Warehouse Utilization
- Average Supplier Rating
- Average Lead Time
- Average Defect Rate
- Average On-Time Delivery
- Inventory Turnover
- High Value Orders

---


## 📷 Dashboard Preview
<img width="1227" height="692" alt="Page 1" src="https://github.com/user-attachments/assets/c01cb8f6-feeb-4b74-8bca-c74dcd9f5fe9" />
<img width="1227" height="692" alt="Page 2" src="https://github.com/user-attachments/assets/1f971f88-9f97-4a14-bfd6-04c494385ffb" />
<img width="1228" height="696" alt="Page 3" src="https://github.com/user-attachments/assets/7d952c21-334e-410e-8808-a53225e57842" />

## 🎯 Key Insights

- Revenue trends over time
- Customer purchasing behavior
- Best-selling products
- Sales channel performance
- Payment method distribution
- Inventory utilization
- Supplier performance evaluation
- Warehouse efficiency
- Product reorder monitoring

---
## 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- Relational Database Design
- SQL Query Writing
- Data Modeling
- Window Functions
- Common Table Expressions (CTEs)
- Power BI Dashboard Design
- DAX Measures
- Business Intelligence Reporting

---




