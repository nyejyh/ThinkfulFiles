SELECT last_review, price, name
FROM listings
GROUP BY 1
ORDER BY price

--cheapest time to go into the city is in late summer between July and August