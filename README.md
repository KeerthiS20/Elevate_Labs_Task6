# Task 6: Sales Trend Analysis Using Aggregations

## Objective

The objective of this task is to analyze sales trends by calculating **monthly revenue** and **order volume** using SQL aggregation functions.

## Dataset

The dataset contains online sales transaction details with the following columns:

- Transaction ID
- Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

## Tools Used

- MySQL
- SQL
- MySQL Workbench

## What I Did

1. Created a MySQL database named `sales_analysis`.
2. Created the `online_sales` table.
3. Imported the online sales dataset into the table.
4. Verified the imported data and total number of records.
5. Checked the date range of the dataset.
6. Grouped the sales data by **year and month**.
7. Used `SUM()` to calculate monthly total revenue.
8. Used `COUNT(DISTINCT)` to calculate monthly order volume.
9. Sorted the results chronologically using `ORDER BY`.
10. Identified the month with the highest revenue.
11. Identified the month with the highest order volume.
12. Analyzed sales for a specific time period using `WHERE`.

## SQL Concepts Used

- `CREATE DATABASE`
- `CREATE TABLE`
- `SELECT`
- `SUM()`
- `COUNT(DISTINCT)`
- `YEAR()`
- `MONTH()`
- `GROUP BY`
- `ORDER BY`
- `WHERE`
- `LIMIT`

## Main Analysis

The main query was used to calculate monthly revenue and order volume:

```sql
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
```

## Results

The analysis produced a monthly sales trend showing:

- Total revenue generated each month
- Number of orders/transactions each month
- Highest revenue month
- Highest order volume month

The results table was generated from the SQL queries and saved along with the project.

## Key Learning

Through this task, I learned how to use SQL aggregation functions and date functions to analyze sales data over time. I also learned how `GROUP BY` can be used to summarize data by year and month and how `ORDER BY` helps organize the results chronologically.
