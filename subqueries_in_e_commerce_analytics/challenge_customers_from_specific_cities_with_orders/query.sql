SELECT customer_id, name, city
FROM customers c
WHERE c.city IN ('New York', 'Los Angeles')
  AND c.customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE quantity >= 1
  );