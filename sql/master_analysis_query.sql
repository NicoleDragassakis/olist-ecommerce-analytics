-- Master Query that was created after investigating the tables
-- Used as the primary dataset for Excel and Power BI analysis

SELECT
    o.order_id,
    o.order_purchase_timestamp,
    o.order_status,

    c.customer_state,
    c.customer_city,

    oi.product_id,
    p.product_category_name,
    t.column2 AS product_category_name_english,

    oi.seller_id,

    oi.price,
    oi.freight_value,

    r.review_score,

    o.order_delivered_customer_date,
    o.order_estimated_delivery_date

FROM dbo.olist_orders_dataset o

JOIN dbo.olist_customers_dataset c
    ON o.customer_id = c.customer_id

JOIN dbo.olist_order_items_dataset oi
    ON o.order_id = oi.order_id

JOIN dbo.olist_products_dataset p
    ON oi.product_id = p.product_id

LEFT JOIN dbo.product_category_name_translation t
    ON p.product_category_name = t.column1

LEFT JOIN dbo.olist_order_reviews_dataset r
    ON o.order_id = r.order_id;
