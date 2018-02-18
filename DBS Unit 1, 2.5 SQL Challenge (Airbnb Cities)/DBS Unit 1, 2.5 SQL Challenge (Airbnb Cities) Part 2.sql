SELECT neighbourhood, reviews_per_month
FROM listings
GROUP BY neighbourhood
ORDER BY reviews_per_month DESC
LIMIT 3

-- Most popular neighbourhood are Zuid, De Aker - Nieuw Sloten, and Osdorp.