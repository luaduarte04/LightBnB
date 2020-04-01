SELECT properties.*, reservations.*, AVG(property_reviews.rating) AS average_rating
FROM reservations
INNER JOIN properties ON reservations.property_id = properties.id
INNER JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;


-- SELECT reservations.*, properties.*, AVG(property_reviews.rating) AS average_rating
-- FROM reservations
-- INNER JOIN properties ON property_id = properties.id
-- INNER JOIN property_reviews ON properties.id = property_id
-- WHERE reservations.end_date IS TRUE
-- GROUP BY properties.title
-- ORDER BY reservations.start_date
-- LIMIT 10;