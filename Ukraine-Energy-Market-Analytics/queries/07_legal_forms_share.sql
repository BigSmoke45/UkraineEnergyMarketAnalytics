SELECT 
    legal_form,
    COUNT(*) as total,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) as percentage
FROM participants
WHERE legal_form IS NOT NULL AND legal_form != ''
GROUP BY legal_form
ORDER BY total DESC;