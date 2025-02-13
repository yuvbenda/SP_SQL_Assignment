-- =========================================================
-- Question 3
-- =========================================================
-- Solution:
SELECT 
    PlayerID,
    SUM(CASE WHEN YEAR(`Date`) = 2022 THEN Revenue ELSE 0 END) AS income_2022,
    SUM(CASE WHEN Revenue > 1000 THEN Revenue ELSE 0 END) AS high_value_purchases,
    MAX(CASE WHEN ProductID = 'A' THEN 1 ELSE 0 END) AS purchased_product_A,
    CASE WHEN SUM(Revenue) > 1000 THEN TRUE ELSE FALSE END AS income_above_1000,
    COUNT(InvoiceID) AS num_invoices
FROM purchases
GROUP BY PlayerID;



-- Explanation:
-- - for this query i used mainly the CASE WHEN method because i wanted to filter the results without using too much calculations
-- - Calculated Income in 2022 by calculating only records in year 2022
-- - Calculate Total income from purchases that exceeded 1,000 only on records that the revenue was above 1000
-- - The customer ever purchase Product A -> here i had to give each record a value and then if there was a productA
--      purchase by this player then i give it 1 else 0 and what now i can do is take the max value and see if he purchased productA
-- - Here we place the boolean value after calculating total income from player and checking 
--      whether the customer's total income above 1000
-- - Number of invoices per customer is calculated by simple count method.