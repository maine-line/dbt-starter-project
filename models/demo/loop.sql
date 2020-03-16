{{ config(materialized='view') }}

with source_data as (

{% for i in range(10) %}

  select {{i}} as id {% if not loop.last %} union all {% endif %}

{% endfor %}

)

select *
from source_data