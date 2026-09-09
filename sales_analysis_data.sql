CREATE DATABASE sales_analysis;

USE sales_analysis;

CREATE TABLE online_sales (
    transaction_id VARCHAR(50),
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(150),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(12,2),
    region VARCHAR(50),
    payment_method VARCHAR(50)
);

SELECT *
FROM online_sales
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM online_sales;

SELECT 
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM online_sales;

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month;
    
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month;
    
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS total_revenue
FROM online_sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 1;

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY order_volume DESC
LIMIT 1;

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
WHERE MONTH(order_date) BETWEEN 1 AND 6
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month;

SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    year,
    month;