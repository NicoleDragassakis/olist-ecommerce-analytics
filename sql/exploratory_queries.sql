-- Olist E-Commerce Analytics
-- Exploratory SQL Queries


-- 1. Sales by Product Category

SELECT
    p.product_category_name,
    SUM(oi.price) AS total_sales
FROM dbo.olist_order_items_dataset oi
JOIN dbo.olist_products_dataset p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_sales DESC;


-- 2. Sales by Customer State

SELECT
    c.customer_state,
    SUM(oi.price) AS total_sales
FROM dbo.olist_orders_dataset o
JOIN dbo.olist_customers_dataset c
    ON o.customer_id = c.customer_id
JOIN dbo.olist_order_items_dataset oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY total_sales DESC;


-- 3. Average Review Score by Product Category

SELECT
    p.product_category_name,
    AVG(CAST(r.review_score AS FLOAT)) AS avg_review_score
FROM dbo.olist_order_items_dataset oi
JOIN dbo.olist_products_dataset p
    ON oi.product_id = p.product_id
JOIN dbo.olist_order_reviews_dataset r
    ON oi.order_id = r.order_id
GROUP BY p.product_category_name
ORDER BY avg_review_score ASC;


-- 4. Monthly Sales Trend

SELECT
    YEAR(o.order_purchase_timestamp) AS order_year,
    MONTH(o.order_purchase_timestamp) AS order_month,
    SUM(oi.price) AS total_sales
FROM dbo.olist_orders_dataset o
JOIN dbo.olist_order_items_dataset oi
    ON o.order_id = oi.order_id
GROUP BY
    YEAR(o.order_purchase_timestamp),
    MONTH(o.order_purchase_timestamp)
ORDER BY
    order_year,
    order_month;


-- 5. Top 10 Sellers by Sales

SELECT TOP 10
    oi.seller_id,
    SUM(oi.price) AS total_sales
FROM dbo.olist_order_items_dataset oi
GROUP BY oi.seller_id
ORDER BY total_sales DESC;
