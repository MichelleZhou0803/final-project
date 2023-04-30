
SELECT HOUR, COUNT(*) as count 
FROM taxi_trips
WHERE tpep_pickup_datetime between '2009-01-01' and '2015-06-30'
GROUP BY HOUR 
ORDER BY count DESC 
