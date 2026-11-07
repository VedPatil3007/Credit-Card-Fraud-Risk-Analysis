# 💳 Credit Card Fraud & Risk Analysis

### An End-to-End Data Analytics Project | SQL • PostgreSQL • Power BI

## 📌 Project Overview

Credit card fraud is a major challenge for financial institutions. Identifying suspicious transaction patterns and understanding the factors associated with fraudulent activities can help businesses investigate risk and make better-informed decisions.

This project analyzes credit card transaction data to explore fraud patterns, transaction behaviour, risk categories, and financial exposure.

Using SQL and Power BI, I investigated business questions, compared fraudulent and legitimate transactions, and presented the analysis through an interactive dashboard.

## 🎯 Business Objectives

- Understand the overall fraud rate and financial exposure.
- Analyze fraudulent transactions across different fraud types.
- Identify transaction categories with higher fraud rates.
- Examine fraud patterns across banks, states, merchants, and card types.
- Analyze monthly changes in fraudulent transactions.
- Evaluate how fraud risk categories and fraud scores relate to actual fraud cases.

## 📊 Dataset Overview

| Attribute | Details |
|---|---|
| Dataset | Credit Card Fraud Risk Analysis |
| Total Records | 1,000 transactions |
| Total Columns | 14 |
| Time Period | December 2023 – December 2024 |
| Missing Values | None |

**Key columns include:**
- Transaction ID and Transaction Date
- Transaction Amount (INR)
- Customer Name and Merchant Name
- Fraud Risk and Fraud Type
- State, Card Type, and Bank
- IsFraud and Fraud Score
- Transaction Category and Merchant Location

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| PostgreSQL | Database management |
| SQL | Business analysis and data extraction |
| Microsoft Power BI | Interactive dashboard development |
| DAX | Calculated measures and KPI development |
| Power BI Desktop | Data modeling and visualization |

## 🔍 SQL Analysis

Developed and executed 10 business-oriented SQL queries to investigate different aspects of transaction fraud.

### Business Questions Explored

1. What is the overall fraud rate, and how does transaction value compare between fraudulent and legitimate transactions?
2. How does the number of fraudulent transactions change month-wise?
3. How accurately do different fraud risk categories correspond with actual fraudulent transactions?
4. Which types of fraud contribute the most to actual fraudulent transactions?
5. Which transaction categories experience the highest fraud rates?
6. Which banks have the highest number of fraudulent transactions?
7. Which merchants are associated with the highest fraudulent transaction amounts?
8. Which states have the highest fraudulent transaction rates?
9. Which card types are more frequently associated with fraudulent transactions?
10. How does the fraud score relate to actual fraudulent transactions?

### SQL Concepts Applied

- SELECT, WHERE, GROUP BY, and ORDER BY
- Aggregate functions: COUNT, SUM, and AVG
- CASE statements for transaction classification
- Subqueries for calculating overall transaction benchmarks
- DATE_TRUNC for monthly trend analysis
- Conditional aggregation for fraud-related calculations
- ROUND for numerical formatting

## 📈 Power BI Dashboard

Developed an interactive dashboard to visualize fraud patterns and key business metrics.

### Dashboard Components

**KPI Cards**
- Fraud Rate %
- Fraudulent Transactions
- Critical Risk Transactions
- Fraudulent Transaction Amount
- Top Fraud Type

**Visualizations**
- Fraud type and transaction category analysis
- Transaction amount distribution across fraud risk categories
- State-wise fraudulent transaction analysis
- Monthly fraudulent transaction trends

**Interactive Filters**
- Fraud Type
- Merchant Name

The dashboard allows users to explore transaction patterns and examine fraud-related metrics through interactive filtering.

## 💡 Key Findings & Business Insights

Based on the supplied dataset:

- **Overall fraud rate:** 28.6% of the 1,000 transactions were classified as fraudulent.
- **Financial exposure:** Fraudulent transactions accounted for approximately ₹33.07 lakh in transaction value.
- **Fraud type:** Card Not Present transactions recorded the highest number of fraudulent cases (72), while Identity Theft had the highest fraud rate (32.82%) among fraud types.
- **Transaction category:** Food Delivery recorded the highest fraud rate at approximately 32.43%.
- **Geographical pattern:** Karnataka recorded the highest state-wise fraud rate at approximately 35.42%.
- **Risk classification:** The observed fraud rate was higher in the High risk category (31.63%) than in the Critical risk category (26.17%). This highlights the importance of evaluating risk labels against actual outcomes.

*These findings describe the supplied dataset and should not be interpreted as actual industry-wide fraud statistics.*

## 🧠 Key Learnings

Through this project, I gained practical experience in:

- Translating business problems into analytical questions.
- Writing SQL queries to investigate fraud patterns and transaction behaviour.
- Using aggregation and conditional logic to calculate business KPIs.
- Analyzing trends across time, geography, merchants, and transaction categories.
- Comparing risk classifications with actual transaction outcomes.
- Creating DAX measures for reusable calculations in Power BI.
- Designing interactive dashboards using KPI cards, charts, and slicers.
- Converting query results into meaningful business insights.


## 🚀 Project Outcome

This project demonstrates an end-to-end business analytics workflow, from exploring transaction data and investigating business questions using SQL to presenting findings through an interactive Power BI dashboard.

It strengthened my practical understanding of SQL, business analysis, KPI development, DAX, and data visualization.

## 👨‍💻 Author

**Ved Patil** | [LinkedIn](https://linkedin.com/in/vedpatil3076/)

Aspiring Data Analyst | Business Intelligence Enthusiast

**Technologies:** SQL | PostgreSQL | Power BI | DAX

