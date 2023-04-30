
WITH t as (
  SELECT cal_distance FROM taxi_trips where tpep_pickup_datetime >= '2013-07-01' and tpep_pickup_datetime <= '2013-07-31'
  UNION ALL
  SELECT cal_distance FROM uber_trips where pickup_datetime >= '2013-07-01' and pickup_datetime <= '2013-07-31' 
) 
SELECT cal_distance from t
ORDER BY cal_distance asc
LIMIT 1
OFFSET (SELECT COUNT(*) FROM t) * 95/100 - 1;
