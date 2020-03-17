SELECT team, count(name) as member_count
FROM {{ ref('users') }} -- references another model
GROUP BY team
--HAVING team IS NOT NULL