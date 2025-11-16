## 📊 Churn Analysis Project

A comprehensive customer churn analysis project combining **SQL data analysis** and **Power BI visualization** to identify churn patterns, predict at-risk customers, and provide actionable business insights for a telecommunications company.

-----

## 🎯 Project Overview

This project analyzes customer churn to:

  * Identify **key factors** contributing to customer churn
  * **Segment customers** by risk level
  * Calculate **revenue impact** of churn
  * Provide data-driven recommendations for **retention strategies**

### Business Problem

With a **26.99% churn rate** affecting 1,732 customers, the company is losing significant revenue. This analysis helps understand why customers leave and how to retain them.

### 📊 Key Metrics

| Metric | Value |
| :--- | :--- |
| **Total Customers** | 6,418 |
| **Churned Customers** | 1,732 |
| **Churn Rate** | **26.99%** |
| New Joiners | 411 |
| Monthly Revenue Lost | **\~$139K** |
| Annual Revenue at Risk | **~$1.67M** |

-----

## 🛠️ Technologies Used

| Category | Component |
| :--- | :--- |
| **Database** | PostgreSQL |
| **Visualization** | Power BI Desktop |
| **Languages** | SQL |
| **Tools** | pgAdmin 4, Power Query, Git & GitHub |

-----

## 📁 Dataset

### Source

Customer data from a telecommunications company with 6,418 records.

### Schema

`Customer_Data` (
`Customer_ID`, `Gender`, `Age`, `Married`, `State`,
`Number_of_Referrals`, **`Tenure_in_Months`**,
**`Contract`**, **`Payment_Method`**, **`Internet_Type`**,
`Monthly_Charge`, `Total_Revenue`,
**`Customer_Status`**, **`Churn_Category`**, `Churn_Reason`,
*+ 15 service columns*
)

### Key Columns

  * `Customer_Status`: Churned / Stayed / Joined
  * `Churn_Category`: Competitor / Attitude / Dissatisfaction / Price / Other
  * `Contract`: Month-to-Month / One Year / Two Year
  * `Tenure_in_Months`: Customer lifetime (0-72 months)

-----

## 💾 SQL Analysis

### 25+ SQL Queries Covering:

  * **Overall Churn Metrics:** Total customers, churn count, churn rate, new joiners tracking.
  * **Demographic Analysis:** Gender (Male: 64.15% of churn), Age groups (Highest churn in 36-50), Marital status impact.
  * **Geographic Analysis:** Top 5 states by churn rate.
  * **Contract & Payment Analysis:** Month-to-Month contract rate (**46.51% churn rate**).
  * **Service Usage Patterns:** Internet type impact (**Fiber Optic: 41.10% churn**).
  * **Revenue Analysis:** Revenue lost from churn, customer lifetime value, high-value customer identification.
  * **Predictive Analytics:** High-risk customer identification, risk scoring (0-5 scale), early churn prediction (first 6 months).

-----

## 📈 Power BI Dashboard

The dashboard provides dynamic, multi-page visualization for data storytelling.

### Dashboard Components

  * **Overview Page:** KPIs, Churn by Gender/Age, State-wise Churn Map.
  * **Contract & Payment Analysis:** Contract Type Distribution, Payment Method Comparison, Tenure Group Breakdown.
  * **Service Analysis:** Service Adoption Rates, Services vs Churn, Multiple Services Impact.
  * **Churn Reasons:** Category Breakdown (Competitor: 43.94%), Top 10 Specific Reasons, Reason-wise Revenue Impact.
  * **Revenue Dashboard:** Total Revenue vs Lost Revenue, Customer Value Segmentation.
  * **Predictive Page:** High-Risk Customers (Risk Score \>= 3), Early Churner Profile.

### Interactive Features

✅ Filters: State, Gender, Contract Type, Age Group
✅ Drill-through: Customer details
✅ Cross-filtering: Dynamic chart interactions

-----

## 💡 Key Insights

### 🔴 Critical Findings

| Factor | Finding | Churn Rate |
| :--- | :--- | :--- |
| **Contract Type** | Month-to-Month contracts are the **\#1 predictor** (89% of churners). | **46.51%** (17x higher than Two Year) |
| **Internet Type** | Fiber Optic users churn significantly more. | **41.10%** |
| **Tenure Risk** | Customers in the first 6 months have high churn. | **23.08%** (42% of all churn happens in year 1) |
| **Payment** | Mailed Check has the highest churn rate. | **37.82%** |
| **Reason** | **Competitor offers** is the dominant reason. | **43.94%** of Churners |

### 🎯 Customer Segments

| Segment | Count | Churn Risk | Avg Monthly Charge |
| :--- | :--- | :--- | :--- |
| **High Risk** | 847 | 75%+ | +$75.32 |
| Medium Risk | 2,134 | 35-75% | $64.18 |
| Low Risk | 3,437 | \<35% | $53.46 |

-----

## 📋 Business Recommendations

| Recommendation | Action | Potential Impact |
| :--- | :--- | :--- |
| **Target M-to-M** | Launch contract upgrade campaign (10-15% discount for annual switch). | Reduce churn by 8-10% |
| **Onboarding Program** | Enhanced support and education for customers in their first 6 months. | Reduce early churn by 15% |
| **Fiber Audit** | Technical audit of Fiber Optic service quality and competitor benchmarking. | Reduce fiber churn from 41% to 30% |
| **Service Bundles** | Promote attractive bundles (3+ services) for cross-sell. | Increase retention by 12% |
| **Customer Success** | Dedicated team for high-risk, high-value accounts (Long-Term). | Reduce high-value churn by 25% |

### Expected ROI

  * **Reduce churn rate** from 26.99% to **18-20%**
  * **Save $50K-70K** in monthly recurring revenue
  * **Increase customer lifetime value** by 25-30%

-----

## 📂 Project Structure

```
churn-analysis/
│
├── data/
│   ├── customer_data.csv           # Raw data file
│
├── sql/
│   ├── 01_create_schema.sql        # Table creation
│   └── 02_create_views.sql         # View definitions
│
├── powerbi/
│   └── ChurnAnalysisDashboard.pbix # Main dashboard file
│
├── documentation/
│   └── Business_Insights.pdf       # Detailed findings
│
├── scripts/
│   └── export_results.py           # Export query results
│
├── .gitignore
├── LICENSE
└── README.md
```

-----

## 🎓 Learning Outcomes

This project demonstrates:

  * **Complex SQL query writing** (CTEs, window functions, aggregations)
  * Advanced **Power BI development** and **DAX measure creation**
  * Interactive **dashboard design** and data storytelling
  * **Business intelligence** and **revenue analysis**
  * Practical application of **predictive analytics** (risk scoring)

-----
