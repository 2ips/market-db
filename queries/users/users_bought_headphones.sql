SELECT DISTINCT users.name
FROM users
JOIN orders ON orders.user_id = users.id
WHERE orders.item = 'наушники'
ORDER BY users.name;