# BehaviorPulse – Burnout Analysis

BehaviorPulse is a data analytics and machine learning project that analyzes daily activity patterns to identify factors associated with burnout and predict next-day burnout risk.

The project combines Python-based data processing, MySQL analytics, SQL views, machine learning, and an interactive Power BI dashboard.

---

## 📌 Problem Statement

High workload, frequent interruptions, low energy, and incomplete tasks can contribute to burnout.

BehaviorPulse analyzes daily activity data to:

- Identify patterns associated with higher burnout scores
- Compare planned effort with actual effort
- Analyze interruptions and energy levels
- Understand burnout patterns across days and activity types
- Predict next-day burnout risk using machine learning
- Present findings through an interactive Power BI dashboard

---

## 🔄 Data Pipeline

```text
Raw Activity Data
       ↓
Python / Pandas
       ↓
Data Cleaning & Feature Engineering
       ↓
MySQL Database
       ↓
SQL Analytical Views
       ↓
Power BI Dashboard
       ↓
Random Forest Burnout Prediction
```

---

## 🧹 Data Cleaning & Feature Engineering

The project performs preprocessing and feature engineering using Python and Pandas.

Key steps include:

- Standardizing categorical values
- Correcting invalid activity-time values
- Handling missing energy-level values
- Flagging potentially duplicated records
- Calculating efficiency from planned vs actual time
- Creating overwork, low-energy, incomplete-task, and high-interruption indicators
- Calculating a composite burnout score
- Generating a binary burnout-risk indicator

---

## 🗄️ MySQL & SQL Analysis

Cleaned activity data is stored in a MySQL database.

The project includes analytical SQL views for:

- Daily burnout analysis
- Burnout by activity type
- Weekly/day-of-week summaries
- User-level burnout summaries

These views are used to simplify analytical queries and provide structured data for the Power BI dashboard.

---

## 🤖 Machine Learning

BehaviorPulse includes a Random Forest classification model for **next-day burnout risk prediction**.

### Target

`next_day_burnout_risk`

### Features

- Planned time
- Actual time
- Interruption count
- Energy level
- Completion status

### Model

**Random Forest Classifier**

### Evaluation

- Test Accuracy: **75%**
- Mean 5-Fold Cross-Validation Accuracy: **~70.3%**

The dataset is relatively small, so these results are treated as an exploratory demonstration rather than a production-ready predictive model.

---

## 📊 Power BI Dashboard

The Power BI dashboard contains three sections:

### 1. Burnout Overview

Provides a high-level view of:

- Average burnout score
- Number of activities
- Burnout patterns across the week
- Burnout levels by activity type

### 2. Burnout Drivers

Explores:

- Planned vs actual time
- Daily interruption levels
- Energy levels across the week
- Activity-level burnout patterns

### 3. Insights & Actions

Highlights:

- Peak burnout days
- Lowest-energy days
- Peak interruption levels
- Activity types with higher burnout scores
- Recommended areas for workload, focus, recovery, and planning

---

## 📈 Key Insights

The analysis highlights several patterns in the activity data:

- **Sunday** shows the highest observed average burnout score.
- **Tuesday** has the lowest observed average energy level.
- **Tuesday** also records the highest average interruption level.
- **Rest activities** have the highest average burnout score among the activity types in the dataset.
- Burnout levels vary across the week rather than following a simple increasing or decreasing trend.

These findings are based on the available activity dataset and should not be interpreted as general conclusions about burnout.

---

## 🛠️ Technologies Used

- **Python**
- **Pandas**
- **NumPy**
- **Scikit-learn**
- **MySQL**
- **SQL**
- **Power BI**
- **Jupyter Notebook**
- **Git & GitHub**

---

## 📁 Project Structure

```text
BehaviorPulse-Burnout-Analysis/
│
├── data/
│   ├── cleaned_activity_data.csv
│   └── daily_activity_log.xlsx
│
├── docs/
│   ├── BehaviorPulse_Burnout_Analysis.pdf
│   ├── dashboard_img_1.jpeg
│   └── dashboard_img_2.jpeg
│
├── notebooks/
│   ├── 01_data_ingestion_mysql.ipynb
│   ├── 02_feature_engineering.ipynb
│   ├── 03_eda_analysis.ipynb
│   └── behavior_pulse.ipynb
│
├── powerbi/
│   └── BehaviorPulse_Burnout_Analysis.pbix
│
├── sql/
│   ├── behavior_pulse.sql
│   └── views.sql
│
├── .gitignore
└── README.md
```

---

## ⚠️ Limitations

- The dataset is relatively small.
- The analysis is exploratory and is not intended for medical or clinical diagnosis.
- Machine learning performance may change with a larger and more diverse dataset.
- The burnout score is a project-defined analytical indicator based on activity-related factors.

---

## 🚀 Future Improvements

Potential extensions include:

- Increasing the size and diversity of the dataset
- Adding more behavioral and contextual features
- Comparing multiple classification algorithms
- Hyperparameter tuning and model optimization
- Adding automated model evaluation
- Building a real-time data pipeline
- Deploying the prediction model through an API
- Adding personalized burnout-risk alerts

---

## 👨‍💻 Author

**Chirayu Ahire**

Computer Engineering | Data Analytics & Machine Learning