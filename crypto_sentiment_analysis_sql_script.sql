use crypto_sentiment_analysis;
ALTER TABLE daily_mining_data RENAME COLUMN Date TO Log_Date, RENAME COLUMN Close TO BTC_Closing_Price;

CREATE OR REPLACE VIEW v_market_signals AS
SELECT 
    Log_Date, Source, Sentiment_Score, BTC_Closing_Price,
    CASE 
        WHEN Sentiment_Score > 0.3 THEN 'Strong Buy Signal'
        WHEN Sentiment_Score < -0.3 THEN 'Strong Sell Signal'
        ELSE 'Hold / Neutral'
    END AS Market_Signal
FROM daily_mining_data;


CREATE OR REPLACE VIEW v_weekly_summary AS
SELECT 
    STR_TO_DATE(CONCAT(YEARWEEK(Log_Date, 1), ' Monday'), '%X%V %W') AS Week_Starting_Date,
    AVG(Sentiment_Score) AS Weekly_Sentiment,
    AVG(BTC_Closing_Price) AS Weekly_Avg_Price,
    SUM(Price_Diff) AS Weekly_Total_Return
FROM daily_mining_data
GROUP BY Week_Starting_Date;

CREATE OR REPLACE VIEW v_sentiment_trends AS
SELECT 
    Log_Date,
    Sentiment_Score,
    AVG(Sentiment_Score) OVER (ORDER BY Log_Date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Rolling_Avg_Sentiment,
    BTC_Closing_Price,
    AVG(BTC_Closing_Price) OVER (ORDER BY Log_Date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Rolling_Avg_Price
FROM daily_mining_data;

CREATE OR REPLACE VIEW v_predictive_analysis AS
SELECT 
    Log_Date,
    Sentiment_Score,
    LAG(BTC_Closing_Price) OVER (ORDER BY Log_Date) AS Yesterday_Price,
    BTC_Closing_Price AS Today_Price,
    LEAD(BTC_Closing_Price) OVER (ORDER BY Log_Date) AS Tomorrow_Price,
    ((LEAD(BTC_Closing_Price) OVER (ORDER BY Log_Date) - BTC_Closing_Price) / BTC_Closing_Price) * 100 AS Potential_Next_Day_Return
FROM daily_mining_data;