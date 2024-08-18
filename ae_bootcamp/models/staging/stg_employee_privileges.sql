with source as (
    
    select * from {{ source('northwind', 'employee_privileges') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source