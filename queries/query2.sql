
SELECT WEEK, COUNT(*) as count 
FROM uber_trips
WHERE pickup_datetime >= '2009-01-01' and pickup_datetime <= '2015-06-30'
GROUP BY WEEK 
ORDER BY count DESC 
