{{ config(materialized='view') }} 

SELECT
 DISTINCT u.name,
 w.user,
 w.timestamp,
 w.hours,
 w.project,
 w.text
FROM `charm-sandbox.bq_puzzles.weeklygoals` as w
LEFT JOIN {{ ref('users') }} as u
on w.user = u.id