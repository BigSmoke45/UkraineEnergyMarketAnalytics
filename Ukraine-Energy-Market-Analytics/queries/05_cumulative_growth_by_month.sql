SELECT 
    TO_CHAR(date_registration, 'YYYY-MM') as month,
    COUNT(*) as new_participants,
    SUM(COUNT(*)) OVER (ORDER BY TO_CHAR(date_registration, 'YYYY-MM')) as cumulative
FROM participants
WHERE date_registration IS NOT NULL
GROUP BY month
ORDER BY month;