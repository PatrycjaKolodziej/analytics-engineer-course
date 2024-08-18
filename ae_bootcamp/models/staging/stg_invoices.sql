with source as (

    select * from {{ source('northwind', 'invoices') }}
)
select
    *,
    current_timestamp() as igestion_timestamp
from source