-- Database is from https://www.dropbox.com/s/4n7ocet119ul611/bikeshare_v2.db.zip?dl=0
WITH rainful AS (
	SELECT 
		date,
		events,
		ZIP
	FROM weather
	WHERE events = 'Rain'
	GROUP BY 1
),

-- Joining the table here
rain_date AS (
	SELECT 
		trip_id,
		duration, 
		zip_code,
		DATE (start_date) trip_date
	FROM trips 
	JOIN rainful
	ON rainful.date = trip_date
	ORDER BY duration DESC
)

SELECT
trip_date,
max(duration)
FROM rain_date
GROUP BY 1	