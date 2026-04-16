SELECT 
    ROUND(AVG(date_registration - date_submission)) as avg_days_to_register,
    MIN(date_registration - date_submission) as min_days,
    MAX(date_registration - date_submission) as max_days
FROM participants
WHERE date_registration IS NOT NULL AND date_submission IS NOT NULL;