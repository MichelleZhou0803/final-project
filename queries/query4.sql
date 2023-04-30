
WITH t as (
  SELECT date(tpep_pickup_datetime) as date, trip_distance from taxi_trips
  UNION ALL
  SELECT date(pickup_datetime) as date, cal_distance as trip_distance from uber_trips 
) 
SELECT date, COUNT(*), avg(trip_distance) FROM t
WHERE date >= '2009-01-01' and date <= '2009-12-31'
GROUP by date
ORDER BY count(*) desc
limit 10
