SELECT
	MinTemperatureF,
	ZIP
FROM
	weather
WHERE
	ZIP = 94301 AND
	Events = 'Rain' OR
	Events = 'Rain-Thunderstorm'