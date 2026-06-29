-- ==========================================
-- SQL Sales Analysis Project
-- Dataset: SampleSuperstore2
-- ==========================================

-- Query 1: Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2;

-- Query 2: Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM SampleSuperstore2;

-- Query 3: Total Orders
SELECT COUNT(*) AS Total_Orders
FROM SampleSuperstore2;

-- Query 4: Top 10 Products by Sales
SELECT Product_Name,
ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 5: Sales by Category
SELECT Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 6: Top 10 Cities by Sales
SELECT City,
ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 7: Top 10 Customers by Sales
SELECT Customer_Name,
ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 8: Profit by Region
SELECT Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM SampleSuperstore2
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Query 9: Top 10 States by Sales
SELECT State,
ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 10: Top Sub-Categories by Sales
SELECT Sub_Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM SampleSuperstore2
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;
