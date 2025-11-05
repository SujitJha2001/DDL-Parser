{{
    config(
        materialized='incremental'
    )
}}

SELECT
    o.order_id,
    o.customer_id,
    c.customer_name,
    o.order_date,
    o.total_amount,
    o.status
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('dim_customers') }} c ON o.customer_id = c.customer_id
{% if is_incremental() %}
WHERE o.order_date > (SELECT MAX(order_date) FROM {{ this }})
{% endif %}
