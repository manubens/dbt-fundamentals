with all_values as (

    select 
        status as value_filed,
        count(*) as n_records
    
    from {{ ref('stg_jaffle_shop__orders') }}
    group by status

)

select *
from all_values
where value_filed not in ('placed','shipped','completed','returned')
