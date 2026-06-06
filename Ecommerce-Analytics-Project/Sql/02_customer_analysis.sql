USE ecommerce_analytics;

SELECT 
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_fact
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT
    Customer_ID,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_fact
GROUP BY Customer_ID
ORDER BY Total_Sales DESC
LIMIT 10;

-- Loss Making Customers

SELECT
    Customer_ID,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_fact
GROUP BY Customer_ID
ORDER BY Total_Profit ASC
LIMIT 10;