SELECT last_review, name, listings1.price
FROM listings1
JOIN calendar
ON listings1.id = calendar.listing_id
GROUP BY 1
ORDER BY 3, 1 DESC
LIMIT 10
--cheapest time to go into the city is in late summer between July and August