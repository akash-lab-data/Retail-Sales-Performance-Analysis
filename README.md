# Retail-Sales-Performance-Analysis

## Project Overview
This project analyzes a retail sales dataset to identify key drivers of sales and profitability, regional performance differences, and the effect of discounting on business outcomes.

The goal of this project is to simulate a real data analyst workflow using four tools:

- **Excel** for data cleaning and initial exploration
- **SQL** for structured business analysis
- **Python** for exploratory data analysis and visual validation
- **Power BI** for dashboarding and business storytelling

---

## Business Problem
A retail business wants to understand:

- Which product categories drive the most sales and profit
- Which regions are underperforming
- Which sub-categories are causing losses
- How discounting impacts profitability
- Whether sales are improving over time

---

## Tools Used
- **Excel**
- **MySQL**
- **Python** (`pandas`, `matplotlib`)
- **Power BI**

---

## Project Workflow

### 1. Excel Data Cleaning
In Excel, the dataset was cleaned before analysis.

Tasks performed:
- Checked and confirmed no duplicate rows
- Fixed inconsistent date formats
- Removed extra spaces using TRIM
- Confirmed no blank values
- Created and checked profit margin values
- Performed initial pivot-based exploration

### 2. SQL Analysis
The cleaned dataset was analyzed in MySQL using SQL queries.

Analysis included:
- Total sales by category
- Total profit by region
- Loss-making orders percentage
- Profitability by sub-category
- Top products by profit
- Discount impact on profit
- Window function analysis for top products by region

### 3. Python EDA
Python was used to validate and visualize business patterns.

Analysis included:
- Dataset overview and KPI summary
- Profit by category
- Discount vs profit relationship
- Worst-performing sub-categories
- Monthly sales trend
- Profit margin comparison

### 4. Power BI Dashboard
An executive dashboard was built in Power BI to present the final business story interactively.

Dashboard includes:
- KPI cards for Sales, Profit, Profit Margin, and Loss %
- Monthly sales trend
- Regional profit comparison
- Sub-category profitability analysis
- Profit vs discount analysis
- Region filter/slicer

---

## Key Insights

### Excel Insights
- The dataset required date standardization before analysis
- No duplicate or blank records were found after cleaning
- Initial exploration showed strong variation in category sales and regional profit

### SQL Insights
- **Technology** generated the highest total sales
- **Central** region had the lowest total profit
- **18.72%** of orders were loss-making
- **Furniture** had the lowest category profit
- **Tables**, **Bookcases**, and **Supplies** were the worst-performing sub-categories
- Higher discounts were associated with lower profit

### Python EDA Insights
- Sales were unstable month to month but increased year over year
- Technology showed the strongest profit margin
- Discount and profit showed a negative relationship
- Losses were concentrated in a few sub-categories, especially Tables

### Dashboard Insights
- Technology is the strongest category for profitability
- Tables is the largest loss-making sub-category
- Central region underperforms compared to other regions
- Higher discount levels increase the risk of negative profit

---

## KPI Summary
- **Total Sales:** 2.30M
- **Total Profit:** 286.4K
- **Profit Margin:** 12.47%
- **Loss %:** 18.72%
- **Total Orders:** 9,994
- **Loss Orders:** 1,871

---

## Business Recommendations
- Reduce excessive discounting, especially on low-margin products
- Review pricing strategy for **Tables** and **Bookcases**
- Investigate operational and sales issues in the **Central** region
- Focus more on high-margin categories like **Technology**
- Monitor sub-category profitability regularly instead of only top-line sales

---

## Dashboard Preview
<img width="1173" height="663" alt="Dashboard" src="https://github.com/user-attachments/assets/bee97451-db94-4f1e-95e2-88e2d08e4cf8" />


---

## Project Folder Structure

```text
01-Retail-Intelligence-System/
│
├── Excel Cleaning/
│   └── retail_cleaned.csv
│
├── notebooks/
│   └── 01_eda.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── Retail_Dashboard.pbix
│
├── outputs screenshots/
│   └── dashboard.png
│
└── README.md
