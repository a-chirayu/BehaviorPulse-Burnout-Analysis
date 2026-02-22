# BehaviorPulse – Burnout Analysis 📊🔥

An end-to-end data analytics project analyzing burnout patterns using SQL, Python, and Power BI.

This project explores how activity types, interruptions, energy levels, and time planning relate to burnout, and presents insights through an interactive Power BI dashboard.

---

## 📌 Project Overview

Burnout is influenced by multiple behavioral and workload factors.  
This project analyzes daily activity data to:

- Identify burnout patterns across activities and days
- Understand key burnout drivers
- Compare planned vs actual effort
- Visualize insights using Power BI dashboards

---

## 🧰 Tech Stack

- SQL – Data modeling, views, aggregations  
- Python – Data ingestion, cleaning, feature engineering, EDA  
- Power BI – Interactive dashboards & visual storytelling  
- Jupyter Notebook – Analysis workflow  

---


📂 Project Structure

This project is organized into the following main folders:

data/

Contains the raw and cleaned datasets used for analysis.
cleaned_activity_data.csv – Final cleaned dataset
daily_activity_log.xlsx – Original activity log

notebooks/

Jupyter notebooks used for different stages of analysis.
Data ingestion and MySQL integration
Feature engineering
Exploratory data analysis (EDA)
Final consolidated notebook

sql/

SQL scripts used for database setup and analysis.
Table creation and data import scripts
SQL views for daily, activity-wise, and weekly burnout metrics

powerbi/

Contains the Power BI dashboard file used for visualization.

docs/

Includes exported dashboard PDF and screenshots for quick preview.

.gitignore

Ensures unnecessary system and cache files are not tracked.


## 📊 Dashboard Pages

### 1️⃣ Burnout Overview
- Overall burnout score
- Burnout levels by day of week
- Burnout by activity type

### 2️⃣ Burnout Drivers
- Planned vs actual time comparison
- Interruptions by day
- Energy level trends

### 3️⃣ Insights & Summary
- Key findings
- Actionable recommendations
- Project summary

> Note: Day-of-week visuals reflect the raw ordering present in the dataset.

---

## 🔍 Key Insights

- Work-related activities contribute the most to burnout
- Higher interruptions align with higher burnout levels
- Energy levels decline alongside burnout
- Gaps exist between planned and actual effort

---

## 🚀 How to Use

1. Review analysis notebooks in the notebooks folder  
2. Explore SQL logic in the sql folder  
3. Open the Power BI dashboard:
   powerbi/BehaviorPulse_Burnout_Analysis.pbix
4. Read the final report in docs

---

## 👤 Author

Chirayu  
Computer Engineering Student | Data Analytics Enthusiast  

---

⭐ If you found this project useful, consider starring the repository!
