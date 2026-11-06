SELECT users.name, COALESCE(SUM(orders.price), 0) as total
FROM users
LEFT JOIN orders ON orders.user_id = users.id
GROUP BY users.id
ORDER BY total DESC, users.name ASC;