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

## 📂 Project Structure

BehaviorPulse-Burnout-Analysis/
│
├── data/
│   ├── cleaned_activity_data.csv
│   └── daily_activity_log.xlsx
│
├── notebooks/
│   ├── 01_data_ingestion_mysql.ipynb
│   ├── 02_feature_engineering.ipynb
│   ├── 03_eda_analysis.ipynb
│   └── behavior_pulse.ipynb
│
├── sql/
│   ├── behavior_pulse.sql
│   └── views.sql
│
├── powerbi/
│   └── BehaviorPulse_Burnout_Analysis.pbix
│
├── docs/
│   ├── BehaviorPulse_Burnout_Analysis.pdf
│   ├── dashboard_img_1.jpeg
│   └── dashboard_img_2.jpeg
│
└── .gitignore

---

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
