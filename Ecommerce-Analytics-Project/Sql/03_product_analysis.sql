USE ecommerce_analytics;

SELECT 
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_fact
GROUP BY Category
ORDER BY Total_Profit DESC;


-- Loss Making Sub-Categories

SELECT
    Sub_Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_fact
GROUP BY Sub_Category
ORDER BY Total_Profit ASC;

-- Discount Impact Analysis

SELECT
    Discount,
    ROUND(AVG(Profit),2) AS Avg_Profit,
    COUNT(*) AS Total_Orders
FROM sales_fact
GROUP BY Discount
ORDER BY Discount;


-- Top Revenue Generating Products

SELECT
    Product_ID,
    Product_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_fact
GROUP BY Product_ID, Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;


-- Loss Making Products

SELECT
    Product_ID,
    Product_Name,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_fact
GROUP BY Product_ID, Product_Name
ORDER BY Total_Profit ASC
LIMIT 10;