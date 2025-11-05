{{
    config(
        materialized='table'
    )
}}

SELECT
    c.customer_id,
    c.customer_name,
    c.email,
    c.created_date,
    COUNT(o.order_id) as total_orders,
    SUM(o.total_amount) as lifetime_value
FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('stg_orders') }} o ON c.customer_id = o.customer_id
GROUP BY 1, 2, 3, 4
