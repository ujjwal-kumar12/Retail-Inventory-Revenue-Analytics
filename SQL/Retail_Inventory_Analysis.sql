
USE retail_inventory;

-- Q1. Overall Business KPIs
SELECT
    ROUND(SUM(Net_Revenue_INR),2) AS Total_Revenue,
    ROUND(SUM(Profit_INR),2) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Quantity) AS Units_Sold,
    ROUND(SUM(Net_Revenue_INR)/COUNT(DISTINCT Order_ID),2) AS Average_Order_Value,
    ROUND(SUM(Profit_INR)/SUM(Net_Revenue_INR)*100,2) AS Profit_Margin_Pct
FROM sales;

-- Q2. Monthly Revenue Trend
SELECT
    MONTHNAME(Order_Date) AS Month,
    MONTH(Order_Date) AS Month_Number,
    ROUND(SUM(Net_Revenue_INR),2) AS Monthly_Revenue
FROM sales
GROUP BY MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Month_Number;

-- Q3. Category-wise Sales and Profit
SELECT
    p.Category,
    SUM(s.Quantity) AS Units_Sold,
    ROUND(SUM(s.Net_Revenue_INR),2) AS Revenue,
    ROUND(SUM(s.Profit_INR),2) AS Profit
FROM sales s
JOIN products p ON s.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Revenue DESC;

-- Q4. Region-wise Performance
SELECT
    st.Region,
    COUNT(DISTINCT s.Order_ID) AS Total_Orders,
    ROUND(SUM(s.Net_Revenue_INR),2) AS Revenue,
    ROUND(SUM(s.Profit_INR),2) AS Profit
FROM sales s
JOIN stores st ON s.Store_ID = st.Store_ID
GROUP BY st.Region
ORDER BY Revenue DESC;

-- Q5. Top 10 Products by Revenue
SELECT
    p.Product_Name,
    p.Category,
    SUM(s.Quantity) AS Units_Sold,
    ROUND(SUM(s.Net_Revenue_INR),2) AS Revenue,
    ROUND(SUM(s.Profit_INR),2) AS Profit
FROM sales s
JOIN products p ON s.Product_ID = p.Product_ID
GROUP BY p.Product_ID, p.Product_Name, p.Category
ORDER BY Revenue DESC
LIMIT 10;

-- Q6. Store Performance
SELECT
    st.Store_Name,
    st.City,
    st.Region,
    COUNT(DISTINCT s.Order_ID) AS Total_Orders,
    ROUND(SUM(s.Net_Revenue_INR),2) AS Revenue
FROM sales s
JOIN stores st ON s.Store_ID = st.Store_ID
GROUP BY st.Store_ID, st.Store_Name, st.City, st.Region
ORDER BY Revenue DESC;

-- Q7. Inventory Status Summary
SELECT
    Stock_Status,
    COUNT(*) AS Product_Store_Combinations,
    SUM(Closing_Stock) AS Closing_Stock_Units,
    ROUND(SUM(Closing_Inventory_Value_INR),2) AS Inventory_Value
FROM inventory
GROUP BY Stock_Status;

-- Q8. Products Requiring Reorder
SELECT
    p.Product_Name,
    st.Store_Name,
    i.Closing_Stock,
    i.Reorder_Level,
    i.Stock_Status
FROM inventory i
JOIN products p ON i.Product_ID = p.Product_ID
JOIN stores st ON i.Store_ID = st.Store_ID
WHERE i.Stock_Status = 'Reorder'
ORDER BY i.Closing_Stock ASC;

-- Q9. Inventory Value by Category
SELECT
    p.Category,
    SUM(i.Closing_Stock) AS Closing_Stock,
    ROUND(SUM(i.Closing_Inventory_Value_INR),2) AS Inventory_Value
FROM inventory i
JOIN products p ON i.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Inventory_Value DESC;

-- Q10. Inventory Turnover by Product
SELECT
    p.Product_Name,
    SUM(i.Units_Sold_2025) AS Units_Sold,
    SUM(i.Average_Inventory_Units) AS Average_Inventory,
    ROUND(
        SUM(i.Units_Sold_2025) /
        NULLIF(SUM(i.Average_Inventory_Units),0),2
    ) AS Inventory_Turnover
FROM inventory i
JOIN products p ON i.Product_ID = p.Product_ID
GROUP BY p.Product_ID, p.Product_Name
ORDER BY Inventory_Turnover DESC;

-- Q11. Top 3 Products in Each Category (CTE + Window Function)
WITH Product_Ranking AS (
    SELECT
        p.Category,
        p.Product_Name,
        SUM(s.Net_Revenue_INR) AS Revenue,
        ROW_NUMBER() OVER (
            PARTITION BY p.Category
            ORDER BY SUM(s.Net_Revenue_INR) DESC
        ) AS Product_Rank
    FROM sales s
    JOIN products p ON s.Product_ID = p.Product_ID
    GROUP BY p.Category, p.Product_ID, p.Product_Name
)
SELECT
    Category,
    Product_Name,
    ROUND(Revenue,2) AS Revenue,
    Product_Rank
FROM Product_Ranking
WHERE Product_Rank <= 3
ORDER BY Category, Product_Rank;

-- Q12. Data Quality Check
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT Sales_Line_ID) AS Unique_Sales_Lines,
    SUM(Sales_Line_ID IS NULL) AS Missing_Sales_ID,
    SUM(Order_ID IS NULL) AS Missing_Order_ID,
    SUM(Order_Date IS NULL) AS Missing_Order_Date,
    SUM(Product_ID IS NULL) AS Missing_Product_ID
FROM sales;
