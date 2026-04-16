SELECT country, COUNT(*) as total
FROM participants
GROUP BY country
ORDER BY total DESC;