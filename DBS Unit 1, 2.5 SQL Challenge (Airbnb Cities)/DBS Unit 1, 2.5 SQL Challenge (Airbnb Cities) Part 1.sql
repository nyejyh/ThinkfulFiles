SELECT name, price, room_type, neighbourhood
FROM listings
GROUP BY 1
ORDER BY price DESC
LIMIT 4

-- Most expensive listings are AmsterdamStag Stay, Charming Studio in City Centre, N/A, and Central Canal House.
-- The most expensive room_type is Entire home/apt.
-- The cap limit on price seems to be 999