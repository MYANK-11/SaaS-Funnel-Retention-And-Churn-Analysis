## 📊 SaaS Funnel, Retention & Churn Analysis — End-to-End SQL Project

A complete end-to-end analytics pipeline built for a hypothetical SaaS product.
This project demonstrates data ingestion, cleaning, modeling, and advanced SQL analysis including Funnel, Retention, and Churn — the three core metrics evaluated in real SaaS companies.


## 🧠 Business Problem Statement

    ## “How can a SaaS company measure user conversion, retention, and churn to improve onboarding, product adoption, and long-term revenue?”


## 📁 Project Overview

This project simulates user behavior across the SaaS lifecycle and builds a full analytical system using:

Python — Event data generation & ingestion

PostgreSQL — Data cleaning, modeling & analytics

SQL — Funnel, retention, and churn metrics

Data Warehouse concepts — Fact & dimension modeling





## 🏗 Architecture

    Raw Events → Python Ingestion → Raw Table → Staging Table → Warehouse (fact + dim) → Analytics → Insights

    
<img width="2160" height="1980" alt="RAW CSV → Ingestion → Raw Table → Staging → Warehouse → Analytics - visual selection(1)" src="https://github.com/user-attachments/assets/ca40b89e-b183-49e2-bba3-1773bd906ea4" />

## Architecture includes:

Raw Layer — Raw CSV with 58,848 events from 5,000 users

Staging Layer — Cleaned & standardized events

Warehouse Layer

dim_users (user attributes)

fact_events (all normalized events)

Analytics Layer — SQL models for funnel, retention & churn




## 📂 Repository Structure
```
├── data_raw/
│   └── events_raw.csv
│
├── src/
│   ├── generate_events.py
│   └── ingest_events.py
│
├── sql/
│   ├── 01_create_raw_tables.sql
│   ├── 02_clean_stg_tables.sql
│   ├── 03_schema_modeling.sql
│   ├── 04_funnel_analysis.sql
│   ├── 05_retention_analysis.sql
│   ├── 06_churn_analysis.sql
|   └── 07_funnel_segmentation
│
├── reports/
    ├── SaaS Funnel Analytics Report.docx       
    └── SaaS Funnel Analytics Report.pptx       # Presentation deck (PPT)



```



## 📦 Dataset Summary

Total users: 5,000
Total events: 58,848
Event lifecycle includes:

    ## landing_page → signup → verify_email → login → start_trial → feature_use → subscribe → cancel



## Attributes include:

•user_id

•event_name

•event timestamp

•device_type (web, android, iOS)

•country

•plan_type


## ⭐ Data Modeling
    ## dim_users

Contains 1 row per user with attributes & first/last activity timestamps.

     ## fact_events

Main analytical table (one row = one user event).

This star-schema layout supports efficient analytics and is used in real warehouse systems.




## 📈 Analytics Performed

1. Funnel Analysis

   •Conversion at each step

   •Drop-off percentages

   •Median time between funnel stages

   •Signup → Subscription rate

2. Retention Analysis

    •Day-1, Day-7, Day-30 retention

    •Daily cohorts

    •Device-level retention performance

3. Churn Analysis

    •Users inactive for 30+ days

    •Churn by cohort

    •Churn by device type



## 🛠 How to Run the Project

1. Generate synthetic events

       python src/generate_events.py

2. Ingest events into PostgreSQL

       python src/ingest_events.py

3. Run SQL scripts in order

       01 → 02 → 03 → 04 → 05 → 06



🎯 Key Outcomes

  •Complete SaaS analytics pipeline

  •Production-style SQL transformations

  •Realistic product insights

  •Demonstration of warehouse modeling

   •Advanced SQL querying (CTEs, cohorts, retention, churn logic)

## 📌 Author

MAYANK P. SAVANI 
