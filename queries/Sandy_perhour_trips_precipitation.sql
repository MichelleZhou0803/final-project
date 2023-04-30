
WITH t1 as (
  SELECT date(date) as day, hour as time, sum(hourlyPrecipitation) as precipitation, avg(hourlyWindSpeed) as windSpeed FROM hourly_weather 
  WHERE date >= '2012-10-22' and date <= '2012-11-06'
  GROUP BY day, time  
),
t2 as (
  SELECT date(tpep_pickup_datetime) as date, hour as time from taxi_trips
  WHERE date >= '2012-10-22' and date <= '2012-11-06'
  UNION ALL
  SELECT date(pickup_datetime) as date, hour as time from uber_trips
  WHERE date >= '2012-10-22' and date <= '2012-11-06'
), 
t3 as (
  SELECT date, time, count(*) as trip_count from t2 group by date, time
)
SELECT t1.day, t1.time, t3.trip_count, t1.Precipitation, t1.windSpeed 
FROM t1 left join t3 on t1.time = t3.time and t1.day = t3.date
ORDER BY t1.day
