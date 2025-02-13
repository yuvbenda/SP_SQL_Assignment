-- =========================================================
-- Question 1
-- =========================================================
-- Solution:

SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS year_month,
    COUNT(DISTINCT PlayerID) AS unique_players,
    COUNT(InvoiceID) AS invoices,
    COUNT(ProductID) AS products_sold,
    SUM(Revenue) AS total_income,
    SUM(CASE WHEN ProductID = 'A' THEN Revenue ELSE 0 END) AS total_income_productA
FROM purchases
GROUP BY DATE_FORMAT(`Date`, '%Y-%m')
ORDER BY DATE_FORMAT(`Date`, '%Y-%m');


-- Explanation:
-- - I formatted the `date` field into YYYY-MM format for display and aggregation.
-- - I calculated unique players with count and distinct operation.
-- - Calculating other metrices with regular aggregation operations.
-- - Product A has been calculated using the CASE When operation so i calculate the revenue only if product id is 'A'.
-- -