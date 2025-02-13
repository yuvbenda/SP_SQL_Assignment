-- =========================================================
-- Question 4
-- =========================================================
-- Solution:

SELECT DISTINCT
    PlayerID,
    `Date`,
    MAX(Revenue) OVER (partition by PlayerID order by `Date`) as highest_purchase_todate,
    SUM(Revenue) OVER (partition by PlayerID order by `Date`) as running_total_income
FROM purchases
ORDER BY PlayerID, `Date`;



-- Explanation:
-- - in the result we can see that in days where a player made more than 1 purchase then the cumulative value is repeated
-- - but it is ok because we used distinct for this - i dont think that we need to group it because the correct values 
-- - are written using the window function MAX and SUM.
-- - we are focusing on each player's revenue as a unit of itself - that is why we use partition by the PlayerID
-- - we order by the date because we want the running sum and the calculation of the MAX value will be over the 
-- - dates in the right order from the most old purchases to the newest. moreover, by default the calculation is
-- - rows between unbounded preceding rows and current row BY DEFAULT! this is why it is calculating running values to its own point.
-- - 