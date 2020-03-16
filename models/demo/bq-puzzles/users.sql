{{ config(materialized='view') }} -- overrides configuration in dbt_project.yml

SELECT * FROM `charm-sandbox.bq_puzzles.users` 
WHERE id IS NOT NULL