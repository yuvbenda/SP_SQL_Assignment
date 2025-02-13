-- =========================================================
-- Question 5
-- =========================================================
-- Solution:

SELECT 
    PlayerID,
    `Date`,
    Revenue AS current_payment,
    Revenue - (LAG(Revenue) OVER (partition by PlayerID order by `Date`)) AS payment_difference
FROM purchases
ORDER BY PlayerID, `Date`;



-- Explanation:
-- - Considering that first purchase has NULL value on the Difference is ok (we can put also 0 but this can be confusing
--    because some records could have 0 by ordering in the same payment amount)
-- - using the LAG window function we can search for the last purchase amount by partitioning on the same player and ordering
-- - the purchases window in a ascending date order -> this value subtracted from the current record revenue gives us the difference.
-- - note that i left the '+' '-' signs in the end result because i wanted to leave a place for metrics of calculating
-- - degrading in revenues or vice verse. if we wanted only the differences in a absolute value then we can use the abs function
-- - and keep only the difference.
-- - If keeping the null values are not good for some metrices then we can simply use the IFNULL, COALESCE functions to make it 0,
-- - we even can in some databases use LAG(Revenue, 1, Revenue) which will create a subtraction of itself which leads to zero...
