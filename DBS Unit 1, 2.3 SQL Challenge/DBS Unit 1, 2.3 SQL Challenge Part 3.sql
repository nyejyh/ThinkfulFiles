SELECT
	start_station,
	end_station,
	duration
FROM
	trips
GROUP BY duration
ORDER BY duration

/** Shortest trip between the two stations is the trip from Steuart at Market to Steuart at Market**/