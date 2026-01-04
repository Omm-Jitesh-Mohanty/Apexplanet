SELECT Description,
       SUM(TotalPrice) AS TotalRevenue
FROM online_retail
GROUP BY Description
ORDER BY TotalRevenue DESC
LIMIT 5;

SELECT InvoiceYear,
       InvoiceMonth,
       SUM(TotalPrice) AS MonthlyRevenue
FROM online_retail
GROUP BY InvoiceYear, InvoiceMonth
ORDER BY InvoiceYear, InvoiceMonth;

SELECT Country,
       SUM(TotalPrice) AS Revenue
FROM online_retail
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 5;

SELECT CustomerID,
       AVG(TotalPrice) AS AvgOrderValue
FROM online_retail
GROUP BY CustomerID
ORDER BY AvgOrderValue DESC
LIMIT 10;

SELECT Description,
       COUNT(*) AS PurchaseCount
FROM online_retail
GROUP BY Description
ORDER BY PurchaseCount DESC
LIMIT 5;

SELECT Country,
       ROUND(SUM(TotalPrice) * 100.0 / 
       (SELECT SUM(TotalPrice) FROM online_retail), 2) AS RevenuePercentage
FROM online_retail
GROUP BY Country
ORDER BY RevenuePercentage DESC;
