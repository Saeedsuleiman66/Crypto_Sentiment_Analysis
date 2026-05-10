# 🪙 Crypto Sentiment Analysis: End-to-End Data Analytics Pipeline

![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-Data_Engineering-lightgrey?logo=postgresql)
![Power BI](https://img.shields.io/badge/Power_BI-Visualization-yellow?logo=powerbi)
![NLP](https://img.shields.io/badge/Focus-Sentiment_Analysis-orange)

## 📌 Project Overview
This project demonstrates a full-cycle data analytics workflow designed to track and analyze cryptocurrency market sentiment. By integrating **SQL** for data structuring, **Python** for Natural Language Processing (NLP), and **Power BI** for business intelligence, the project transforms unstructured textual data into actionable market insights.

The analysis focuses on identifying the "Fear & Greed" levels in the market by correlating public discourse with digital asset trends.

## 🛠️ Technical Workflow & Implementation

### 1. Data Engineering (SQL)
- **File:** `crypto_sentiment_analysis_sql_script.sql`
- **Action:** Structured the raw data environment. Used SQL to perform data cleaning, filtering, and aggregations.
- **Goal:** Ensuring data integrity and preparing optimized views for the analytical model.

### 2. Sentiment Processing (Python/NLP)
- **File:** `Crpto_sentiment_analysis_script.ipynb`
- **Action:** Leveraged **TextBlob/NLTK** to perform sentiment scoring. 
- **Tasks:** - Advanced text preprocessing (removing URLs, hashtags, and crypto-specific noise).
  - Calculating **Polarity** (how positive/negative) and **Subjectivity** (how opinionated) scores.
  - Exporting processed data for visualization.

### 3. Business Intelligence & Visualization (Power BI)
- **File:** `crypto_sentiment_analysis.pbix`
- **Action:** Built an interactive dashboard to monitor market mood.
- **Key Visuals:** Sentiment trends over time, asset dominance rankings, and sentiment-price correlation metrics.

## 📁 Repository Structure
- 📝 `Crpto_sentiment_analysis_script.ipynb`: Core Python logic for NLP.
- 🗄️ `crypto_sentiment_analysis_sql_script.sql`: Database scripts for data manipulation.
- 📊 `crypto_sentiment_analysis.pbix`: The final interactive BI report.

## 🚀 Key Features
* **Full-Stack Analytics:** Demonstrates proficiency in the three most critical tools for modern data analysts (SQL, Python, Power BI).
* **Automated NLP:** Quantifies subjective text into objective metrics.
* **Scalable Architecture:** The workflow can be adapted to any financial sentiment analysis (Stocks, Forex, etc.).

## 📑 How to Run
1. **Database:** Execute the SQL script to prepare your local or cloud database.
2. **Analysis:** Run the Jupyter Notebook to process sentiment data.
3. **Report:** Open the `.pbix` file in Power BI Desktop to explore the insights.

## 👤 Author
**Saeed Soliman**
*Computer Science & AI Graduate | Data Analyst*
[LinkedIn](www.linkedin.com/in/saeed-soliman-analytics) | [GitHub](https://github.com/Saeedsuleiman66)
