SELECT
	Date,
	MaxTemperatureF,
	ZIP
FROM
	weather
GROUP BY 2

/* Hottest day is 2015-11-17 at 134 degrees F, at Zip Code 94063*/