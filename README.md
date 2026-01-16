# E-commerce Funnel & Revenue Analysis (Oct 2019) | SQL + Tableau

## Dashboard Link (Tableau Public)
https://public.tableau.com/views/EcommerceFunnelRevenueAnalysisOct2019/Dashboard1?:language=en-GB&publish=yes&:display_count=n&:origin=viz_share_link

---

## Project Overview
This project analyzes customer behavior from an e-commerce dataset to understand the funnel:
**View → Cart → Purchase**, revenue performance, and top-selling categories/brands.

The workflow is **SQL-first in PostgreSQL**, and the results are visualized in **Tableau** using summary exports.

---

## Dataset
**Source:** Kaggle – Ecommerce Behavior Data from Multi Category Store  
**Month Used:** 2019-Oct  
**Total Events:** 22,021,953

---

## Tools Used
- PostgreSQL
- SQL
- Tableau

---

## Key Results (Oct 2019)
### Funnel Events
- Views: 21,187,434  
- Cart: 446,487  
- Purchases: 388,032  

### Revenue
- Total Revenue: 119,573,032.97  
- Highest Revenue Day: 2019-10-16 → 9,747,239.24  

### Top Categories by Revenue
- electronics.smartphone → 81,186,216.59  
- unknown → 12,364,957.29  
- computers.notebook → 4,801,761.67  

### Top Brands by Purchases
- Samsung → 88,878  
- Apple → 74,128  
- Xiaomi → 29,568  

---

## Data Cleaning
- Missing/blank `category_code` values were labeled as **unknown** to preserve valid purchase revenue records.

---

## Tableau Dashboard Views
1. Daily Revenue Trend  
2. Top Categories by Revenue  
3. Funnel Counts (View → Cart → Purchase)

---

## Repository Structure
- `csv_exports/` → Tableau-ready summary CSVs
- `project_queries.sql` → all SQL queries used

