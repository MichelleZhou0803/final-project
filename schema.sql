
create table if not exists hourly_weather(
  hid int primary key, 
  date timestamp, 
  year int, 
  month int, 
  week int, 
  hour int, 
  hourlyPrecipitation float, 
  hourlyWindSpeed float
)

create table if not exists daily_weather(
  did int primary key,
  date timestamp,
  dailyPrecipitation float,
  dailyAverageWindSpeed float,
  year int,
  month int,
  day int, 
  week int 
)

create table if not exists taxi_trip(
  tid int primary key,
  date timestamp,
  tpep_pickup_datetime timestamp,
  tpep_dropoff_datetime timestamp,
  trip_distance float,
  tip_amount float,
  passenger_count int,
  pickup_longitude float,
  pickup_latitude float,
  dropoff_longitude float,
  dropoff_latitude float,
  cal_distance float,
  year int,
  month int,
  day int,
  hour int,
  week int
)

create table if not exists uber_trip(
  uid int primary key,
  pickup_datetime timestamp,
  pickup_longitude float,
  pickup_latitude float,
  dropoff_longitude float,
  dropoff_latitude float,
  passenger_count int,
  year int,
  month int,
  day int,
  week int,
  hour int,
  cal_distance float
)

create table if not exists sun_weather
(
    id int primary key,
    date timestamp,
    year int,
    month int,
    day int,
    week int,
    hour int,
    sunrise float,
    sunset float
);
