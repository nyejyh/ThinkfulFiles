SELECT last_review, name, availability_365
FROM listings
GROUP BY 1
ORDER BY availability_365
LIMIT 5
-- busiest time of the year to go is January