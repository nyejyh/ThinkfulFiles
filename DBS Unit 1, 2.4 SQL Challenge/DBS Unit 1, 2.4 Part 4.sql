WITH 
	rainful
AS (
	SELECT 
		date,
		events,
		ZIP
	FROM 
		weather
	WHERE 
		events = 'Rain'
	GROUP BY 1
)

-- Joining the table here
SELECT 
	r.trip_id
	r.duration 
	r.ZIP
	COUNT(*)
FROM 
	rainful r
	
-- We need an intermediate join to go from docks available to stations
-- because the trips table does not have a 
JOIN 
	trips t
ON
	r.ZIP = t.zip_code
GROUP BY 1