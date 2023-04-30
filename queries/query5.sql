
WITH t1 as (
  SELECT date(date) as date FROM daily_weather 
  WHERE date >= '2014-01-01' and date <= '2014-12-31'
  ORDER BY dailyAverageWindSpeed desc
  LIMIT 10  
),
t2 as (
  SELECT date(tpep_pickup_datetime) as date from taxi_trips where tpep_pickup_datetime >= '2014-01-01' and tpep_pickup_datetime <= '2014-12-31'
  UNION ALL
  SELECT date(pickup_datetime) as date from uber_trips where pickup_datetime >= '2014-01-01' and pickup_datetime <= '2014-12-31'
), 
t3 as (
  SELECT date, COUNT(*) as trip_count FROM t2 GROUP BY date
)
SELECT t1.date, t3.trip_count FROM t1 LEFT JOIN t3 on t1.date = t3.date
