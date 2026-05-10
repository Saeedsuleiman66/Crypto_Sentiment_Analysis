# 📉 Bitcoin Sentiment-Price Correlation Analysis

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python)
![Financial Analysis](https://img.shields.io/badge/Domain-FinTech-green)
![NLP](https://img.shields.io/badge/NLP-VADER-orange)
![Data Engineering](https://img.shields.io/badge/Pipeline-ETL-lightgrey)

## 📌 Project Overview
This project investigates the relationship between global news sentiment and Bitcoin (BTC) price movements. By integrating real-time news data with historical financial market prices, I developed a pipeline that quantifies the "mood" of the market and analyzes its impact on price volatility.

## 🛠️ Tech Stack
- **Data Sourcing:** `Requests` (NewsAPI), `yfinance` (Yahoo Finance API).
- **Processing:** `Pandas` for data manipulation and merging.
- **NLP:** `vaderSentiment` for rule-based sentiment intensity analysis.
- **Database Readiness:** `SQLAlchemy` & `PyMySQL` for future scaling and storage.

## ⚙️ The Data Pipeline
1.  **News Extraction:** Automated fetching of global Bitcoin-related news (titles and descriptions).
2.  **Sentiment Scoring:** Using the VADER analyzer to assign a `compound score` (-1 to 1) for each article.
3.  **Market Integration:** Pulling BTC-USD closing prices and synchronizing them with news dates.
4.  **Feature Engineering:** - Aggregated daily sentiment averages.
    - Calculated **Daily Percentage Change (% Change)** in BTC prices to identify correlation points.

## 🚀 Key Insights
- **Sentiment Volatility:** Identified how negative news spikes (e.g., "Loss of Life Savings") correlate with price dips.
- **Data Consolidation:** Successfully merged heterogeneous data sources (News JSON + Financial DataFrames) into a clean, analysis-ready format.
- **Predictive Foundation:** Built a dataset that serves as a baseline for training more advanced Machine Learning models.

## 📁 Repository Files
- `Crpto_sentiment_analysis_script.ipynb`: Complete Python workflow.
- `crypto_sentiment_analysis_sql_script.sql`: Data structuring and storage logic.
- `crypto_sentiment_analysis.pbix`: Interactive dashboard for visualizing these correlations.

## 👤 Author
**Saeed Soliman**
*Computer Science & AI Graduate | Data Analyst*
[LinkedIn](www.linkedin.com/in/saeed-soliman-analytics) | [GitHub](https://github.com/Saeedsuleiman66)
