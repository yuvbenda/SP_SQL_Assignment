-- =========================================================
-- Question 2
-- =========================================================
-- Solution:

WITH valid_players AS (
    SELECT distinct PlayerID 
    FROM purchases
    WHERE YEAR(`Date`) != 2023
)
SELECT 
    p.PlayerID, 
    SUM(p.Revenue) AS total_income
FROM purchases p
WHERE PlayerID IN (SELECT PlayerID FROM valid_players)
GROUP BY p.PlayerID
ORDER BY total_income DESC
LIMIT 10;


-- Explanation:
-- - we select only players which played in more than 1 year or played in a different year that is not 2023.
-- - Last, We calculate the players revenues per id, we exclude the players which are not standing with the condition.
-- - I chose to use WHERE clause for including valid players instead of join by id because of performance to consider situation of big
-- - players dataset.