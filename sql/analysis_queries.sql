SELECT 
    c.customer_id,
    o.order_id,
    o.order_purchase_timestamp
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

SELECT 
    c.customer_id,
    o.order_id,
    o.order_purchase_timestamp,
    p.payment_value
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id;

SELECT 
    c.customer_id,
    o.order_id,
    p.payment_value,
    oi.product_id,
    pr.product_category_name
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN payments p 
    ON o.order_id = p.order_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products pr 
    ON oi.product_id = pr.product_id;

SELECT 
    SUM(payment_value) AS total_revenue
FROM payments;

SELECT 
    pr.product_category_name,
    SUM(p.payment_value) AS revenue
FROM orders o
JOIN payments p 
    ON o.order_id = p.order_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products pr 
    ON oi.product_id = pr.product_id
GROUP BY pr.product_category_name
ORDER BY revenue DESC;

SELECT 
    c.customer_id,
    SUM(p.payment_value) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN payments p 
    ON o.order_id = p.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

SELECT 
    c.customer_id,
    SUM(p.payment_value) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN payments p 
    ON o.order_id = p.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;

SELECT 
    c.customer_id,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC;

SELECT 
    pr.product_id,
    pr.product_category_name,
    SUM(p.payment_value) AS revenue
FROM orders o
JOIN payments p 
    ON o.order_id = p.order_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products pr 
    ON oi.product_id = pr.product_id
GROUP BY pr.product_id, pr.product_category_name
ORDER BY revenue DESC
LIMIT 10;

SELECT 
    pr.product_id,
    pr.product_category_name,
    SUM(p.payment_value) AS revenue
FROM orders o
JOIN payments p 
    ON o.order_id = p.order_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products pr 
    ON oi.product_id = pr.product_id
GROUP BY pr.product_id, pr.product_category_name
ORDER BY revenue ASC
LIMIT 10;

SELECT 
    pr.product_category_name,
    SUM(p.payment_value) AS revenue
FROM orders o
JOIN payments p 
    ON o.order_id = p.order_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products pr 
    ON oi.product_id = pr.product_id
GROUP BY pr.product_category_name
ORDER BY revenue DESC;



