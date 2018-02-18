SELECT 
	trips.trip_id,
	stations.name,
	COUNT(CASE WHEN trip_id > 5 THEN 1 END) as number_of_trips
FROM trips 
JOIN stations
ON stations.name = trips.start_station
GROUP BY 1
ORDER BY stations.dockcount