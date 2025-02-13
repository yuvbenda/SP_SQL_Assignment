-- Another solution if it is about more than 1 year purchases then i can create a query which
-- is giving you only players which purchased in more than a specific 1 year.

WITH player_years AS (
    SELECT 
        PlayerID, 
        YEAR(Date) AS purchase_year, 
        dense_rank() OVER(partition by PlayerID ORDER BY YEAR(Date)) as ranked_years
    FROM purchases

),
valid_players AS (
    SELECT distinct PlayerID 
    FROM player_years
    WHERE ranked_years = 2
)
SELECT 
    p.PlayerID, 
    SUM(p.Revenue) AS total_income
FROM purchases p
WHERE PlayerID IN (SELECT PlayerID FROM valid_players)
GROUP BY p.PlayerID
ORDER BY total_income DESC
LIMIT 10;