SELECT properties.city, COUNT(reservations) AS total_reservations
FROM reservations
INNER JOIN properties ON properties_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;


-- SELECT properties.city, COUNT(reservations.*)
-- FROM properties
-- INNER JOIN properties ON properties_id = properties.id
-- GROUP BY city
-- ORDER BY city DESC;