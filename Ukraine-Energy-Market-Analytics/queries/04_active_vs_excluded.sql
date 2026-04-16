SELECT 
    COUNT(*) FILTER (WHERE date_exclusion IS NULL) as active,
    COUNT(*) FILTER (WHERE date_exclusion IS NOT NULL) as excluded
FROM participants;