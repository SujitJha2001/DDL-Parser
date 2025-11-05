{{
    config(
        materialized='view'
    )
}}

SELECT
    customer_id,
    customer_name,
    email,
    created_date
FROM {{ source('raw', 'customers') }}
WHERE is_active = true
