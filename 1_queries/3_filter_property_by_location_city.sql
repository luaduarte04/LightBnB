SELECT properties.*, AVG(property_reviews.rating) AS average_rating
FROM properties
INNER JOIN property_reviews ON properties.id = property_id
WHERE properties.city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;


-- SELECT properties.title, properties.description, properties.thumbnail_photo_url, properties.cover_photo_url, properties.cost_per_night, properties.parking_spaces, properties.number_of_bathrooms, properties.number_of_bedrooms, properties.country, properties.street, properties.city, properties.province, properties.post_code, properties.active, property_reviews.property_id AS average_rating
-- FROM properties
-- INNER JOIN property_reviews ON property_reviews.property_id = properties.id
-- WHERE properties.city = 'Vancouver' 
-- AND (AVG(property_reviews) IS property_reviews.rating >= 4)
-- GROUP BY title
-- ORDER BY cost_per_night ASC;
-- LIMIT 10;