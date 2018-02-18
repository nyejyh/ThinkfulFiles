-- Set up the CTE to create a "available" table, or which station is empty most often?
WITH 
	available
AS (
	-- A query that should be simple
	SELECT 
		name,
		AVG(dockcount) dockcount
	FROM 
		stations
	GROUP BY 1
)

-- Joining the table here
SELECT 
	a.docks_available
	COUNT(*)
FROM 
	available a
	
-- We need an intermediate join to go from docks available to stations
-- because the trips table does not have a 
	stations sn
JOIN 
	status ss
ON
	sn.station_id = ss.station_id
GROUP BY 1