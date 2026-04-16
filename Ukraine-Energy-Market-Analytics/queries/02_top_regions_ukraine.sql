SELECT address, COUNT(*) as total
FROM participants
WHERE country = 'Ukraine'
GROUP BY address
ORDER BY total DESC
LIMIT 10;