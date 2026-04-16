SELECT EXTRACT(YEAR FROM date_registration) as year, COUNT(*) as total
FROM participants
WHERE date_registration IS NOT NULL
GROUP BY year
ORDER BY year;