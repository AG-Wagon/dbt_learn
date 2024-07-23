SELECT 
    sales.orders_id
    ,sales.date_date
    ,sales.products_id
    ,sales.revenue
    ,sales.quantity
    ,product.purchase_price
    ,CAST(product.purchase_price AS FLOAT64)*(sales.quantity) AS purchase_cost
    ,sales.revenue-CAST(product.purchase_price AS FLOAT64)*(sales.quantity) AS margin
FROM {{ ref('stg_raw__sales') }} AS sales
JOIN {{ ref('stg_raw__product') }} AS product
ON product.products_id = sales.products_id