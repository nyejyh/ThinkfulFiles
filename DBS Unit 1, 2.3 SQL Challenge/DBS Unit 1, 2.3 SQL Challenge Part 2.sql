SELECT
	start_station,
	COUNT(*) start_station
FROM
	trips
GROUP BY start_station
ORDER BY start_station

/** Each station has a list of how many trips that started to the right **/