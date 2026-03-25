# 🏥 Healthcare Data Analysis: Patient Trends & Billing Insights

## 📌 Project Overview
This project provides an end-to-end analysis of a healthcare dataset containing over 50,000 patient records. The goal was to uncover patterns in medical conditions, hospital stay durations, and insurance billing efficiency. 

I implemented a full data pipeline:
1.  **Data Engineering:** Created schemas and performed complex queries in **SQL**.
2.  **Exploratory Data Analysis (EDA):** Performed statistical analysis and visualization using **Python**.
3.  **Business Intelligence:** Built an interactive dashboard in **Power BI** for executive reporting.

## 🛠️ Tech Stack
- **SQL (PostgreSQL):** Table Schema, Data Import, and Aggregation Queries.
- **Python (Pandas, Seaborn, Matplotlib):** Statistical distributions and data cleaning.
- **Power BI:** Interactive data storytelling.
- **Excel:** Data exported for reporting.

## 📂 Repository Structure
- `sql_all_query.sql`: Includes scripts for Table Creation and 5+ Advanced Business Queries.
- `Untitled6.ipynb`: Python notebook showing Age Group distribution and Correlation heatmaps.
- `healthcare_dashboard.pbix`: Power BI file with dynamic filters for Hospital and Admission type.
- `healthcare_dataset.csv`: The primary dataset used for this project.

## 📊 Key Insights from Analysis

### 1. Clinical Trends (SQL & Python)
* **Most Common Conditions:** Identified that Cancer, Obesity, and Diabetes represent a significant portion of admissions.
* **Stay Duration:** The average length of stay across all conditions is approximately **15.5 days**, with no major variance between "Normal" and "Abnormal" test results.

### 2. Financial & Insurance Metrics (SQL)
* **Billing Categories:** Analysis reveals three distinct billing tiers (Low, Medium, High).
* **Provider Performance:** Compared total revenue and average billing amounts across major providers like **Aetna, Medicare, and Cigna**.

### 3. Demographic Distribution (Python)
* **Age Groups:** The majority of patients fall into the **41-60** and **Above 60** categories, which directly correlates with higher billing amounts.

## 🚀 How to Replicate
1.  **Database:** Run `sql_all_query.sql` in your PostgreSQL environment to set up the tables.
2.  **Notebook:** Open the `.ipynb` file in Google Colab to see the data visualizations.
3.  **Dashboard:** Open the `.pbix` file in Power BI Desktop to explore the interactive charts.

---
**Author:** [shivani sharma]
