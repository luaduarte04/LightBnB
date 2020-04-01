-- /////////////////
-- SEEDS FOR USERS
-- ///////////////

INSERT INTO users (name, email, password) 
VALUES
('Jonna Takahashi', 'mleary@live.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Hyo Farnes', 'djpig@live.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Man Starnes', 'leviathan@aol.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Chin Bash', 'elflord@aol.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Catrina Montford', 'ahuillet@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Marnie Mei', 'hutton@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Fernando Crosland', 'caidaperl@msn.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Hester Lattimer', 'melnik@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Lincoln Renaud', 'mallanmba@icloud.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Raye Figueiredo', 'unreal@verizon.net', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');



-- /////////////////////////
-- SEEDS FOR PROPERTIES
-- ///////////////////////

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathroom, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES
(1, 'Crimson Pinnacle Point', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 30, 1, 1, 2, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'yes'),
(2, 'Exalted Beach Refuge', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 60, 2, 2, 4, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'yes'),
(3, 'Prince Bliss Paradise', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 40, 2, 2, 4, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'no'),
(4, 'Crimson Baron', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 80, 3, 2, 6, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'no'),
(5, 'Saffron Square', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 70, 1, 1, 1, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'yes'),
(6, 'Twin Petal', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 30, 1, 1, 2, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'yes'),
(7, 'Mirror of Perfection', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 60, 2, 2, 4, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'yes'),
(8, 'Crescent Happiness', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 40, 2, 2, 4, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'no'),
(9, 'Mirth of Relaxation', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 80, 3, 2, 6, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'no'),
(10, 'Diorama Palace', 'description', 'http://lorempixel.com/400/200', 'http://lorempixel.com/400/200', 70, 1, 1, 1, 'Canada', '1600 St Urbain St', 'Montreal', 'Quebec', 'H2X 1Z8', 'yes');



-- /////////////////////////
-- SEEDS FOR RESERVATIONS
-- ///////////////////////

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES
(1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14'),
(4, 4, '2018-09-11', '2018-09-26'),
(5, 5, '2019-01-04', '2019-02-01'),
(6, 6, '2021-10-01', '2021-10-14'),
(7, 7, '2018-09-11', '2018-09-26'),
(8, 8, '2019-01-04', '2019-02-01'),
(9, 9, '2021-10-01', '2021-10-14'),
(10, 10, '2021-10-01', '2021-10-14');



-- /////////////////////////
-- SEEDS FOR RESERVATIONS
-- ///////////////////////

INSERT INTO reservations (guest_id, property_id, reservation_id, rating, message) 
VALUES
(2, 5, 10, 3,'message'),
(1, 4, 1, 5,'message'),
(8, 1, 2, 1,'message'),
(3, 8, 5, 5,'message'),
(4, 2, 7, 2,'message'),
(9, 3, 4, 3,'message'),
(5, 6, 3, 2,'message'),
(7, 10, 8, 4,'message'),
(6, 9, 9, 3,'message'),
(10, 7, 6, 'message');