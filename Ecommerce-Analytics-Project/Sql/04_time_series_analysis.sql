-- Yearly Sales & Profit Analysis

SELECT
    Order_Year,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_fact
GROUP BY Order_Year
ORDER BY Order_Year;


-- Monthly Sales Trend

SELECT
    Order_Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_fact
GROUP BY Order_Month
ORDER BY Total_Sales DESC;


-- Shipping Performance Analysis

SELECT
    Shipping_Days,
    COUNT(*) AS Total_Orders,
    ROUND(AVG(Profit),2) AS Avg_Profit
FROM sales_fact
GROUP BY Shipping_Days
ORDER BY Shipping_Days;