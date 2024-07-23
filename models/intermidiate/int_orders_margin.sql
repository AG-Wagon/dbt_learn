SELECT
    margin.orders_id
    ,margin.date_date
    ,SUM(margin.revenue) AS revenue
    ,SUM(margin.quantity) AS quantity
    ,SUM(margin.purchase_cost) AS purchase_cost
    ,SUM(margin.margin) AS margin
FROM {{ ref('int_sales_margin') }} AS margin
GROUP BY margin.orders_id, margin.date_date