SELECT 
	t.duration,
	w.events
FROM 
	trips t
JOIN 
	weather w
ON
	t.zip_code = w.ZIP
WHERE 
	Events = 'Rain'
GROUP BY duration
ORDER BY duration DESC

/** The three longest trip ran a duration of 83915, 81687, 81484 **/