with validation as (

  select *
  from {{ ref('teams') }}
  where member_count = 0

)

select * from validation