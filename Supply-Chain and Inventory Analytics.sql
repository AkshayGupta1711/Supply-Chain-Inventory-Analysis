--Basic Queries
select * from customers limit 10;

SELECT product_name,selling_price
FROM products
WHERE selling_price > 2000;

SELECT order_id, revenue
FROM sales
ORDER BY revenue DESC;
--Aggregate Functions
SELECT SUM(revenue) AS total_revenue
FROM sales;
SELECT SUM(profit) AS total_profit
FROM sales;
SELECT AVG(selling_price) AS avg_price
FROM products;
SELECT MAX(revenue)
FROM sales;
SELECT COUNT(*) AS total_customers
FROM customers;
--GROUP BY & HAVING
SELECT sales_channel,
       SUM(revenue) AS total_revenue
FROM sales
GROUP BY sales_channel;

SELECT payment_method,
       SUM(revenue)
FROM sales
GROUP BY payment_method;

SELECT order_status,
       COUNT(*)
FROM sales
GROUP BY order_status;

SELECT customer_id,
       SUM(revenue) AS revenue
FROM sales
GROUP BY customer_id
HAVING SUM(revenue) > 100000;

SELECT product_id,
       SUM(quantity) AS total_qty
FROM sales
GROUP BY product_id
HAVING SUM(quantity) > 300
ORDER BY product_id ;
--JOINS
SELECT
c.customer_name,
s.order_id,
s.revenue
FROM customers c
JOIN sales s
ON c.customer_id=s.customer_id;

SELECT
p.product_name,
s.revenue
FROM products p
JOIN sales s
ON p.product_id=s.product_id;

SELECT
supplier_name,
product_name
FROM suppliers s
JOIN products p
ON s.supplier_id=p.supplier_id;

SELECT
product_name,
closing_stock
FROM inventory i
JOIN products p
ON i.product_id=p.product_id;

SELECT
customer_name,
product_name,
quantity
FROM sales s
JOIN customers c
ON s.customer_id=c.customer_id
JOIN products p
ON s.product_id=p.product_id;

SELECT
category,
SUM(revenue)
FROM products p
JOIN sales s
ON p.product_id=s.product_id
GROUP BY category;
--Suppliers Performance
SELECT
supplier_name,
AVG(rating),
AVG(defect_rate_percent)
FROM suppliers
GROUP BY supplier_name;
--Subqueries
SELECT *
FROM sales
WHERE revenue >
(
SELECT AVG(revenue)
FROM sales);

SELECT customer_name
FROM customers
WHERE customer_id=
(
SELECT customer_id
FROM sales
GROUP BY customer_id
ORDER BY SUM(revenue) DESC
LIMIT 1);

SELECT product_name
FROM products
WHERE product_id=
(
SELECT product_id
FROM sales
GROUP BY product_id
ORDER BY SUM(quantity) DESC
LIMIT 1);
--CTEs
WITH CustomerRevenue AS
(SELECT
customer_id,
SUM(revenue) total_revenue
FROM sales
GROUP BY customer_id)
SELECT *
FROM CustomerRevenue
ORDER BY total_revenue DESC
LIMIT 10;

WITH ProductRevenue AS
(SELECT
product_id,
SUM(revenue) revenue
FROM sales
GROUP BY product_id)
SELECT *
FROM ProductRevenue
ORDER BY revenue DESC;
WITH MonthlyRevenue AS
(
    SELECT
        DATE_TRUNC('month', order_date) AS month,
        SUM(revenue) AS revenue
    FROM sales
    GROUP BY DATE_TRUNC('month', order_date)
)
SELECT *
FROM MonthlyRevenue
ORDER BY month;
--Window Functions
SELECT
customer_id,
SUM(revenue) AS total_revenue,
RANK() OVER
(ORDER BY SUM(revenue) DESC)
FROM sales
GROUP BY customer_id;

SELECT
order_date,
revenue,
SUM(revenue) OVER
(
ORDER BY order_date
) AS running_revenue
FROM sales;

SELECT
    customer_id,
    SUM(revenue) AS customer_revenue,
    100.0 * SUM(revenue) /
    SUM(SUM(revenue)) OVER () AS revenue_percentage
FROM sales
GROUP BY customer_id
ORDER BY customer_revenue DESC;
