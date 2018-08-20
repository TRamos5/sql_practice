-- CREATE TABLE restaurant (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name VARCHAR,
--     distance numeric(3, 1),
--     stars numeric(3, 1),
--     category VARCHAR,
--     favorite_dish VARCHAR,
--     takeout BOOLEAN,
--     last_visited date
-- );

-- INSERT INTO restaurant VALUES (
--     Default, 'Hoy Win', 2.3, 4.9, 'Chinese', 'Orange Chicken', TRUE, '4/13/18'
-- );

-- INSERT INTO restaurant VALUES (
--     Default, 'Mario', 4.9, 1.8, 'Italian', 'Pizza', TRUE, '2/10/18'
-- );

-- INSERT INTO restaurant VALUES (
--     Default, 'Gringos', 3.7, 3.2, 'Mexian', 'Enchiladas', TRUE, '5/16/18'
-- );

-- INSERT INTO restaurant VALUES (
--     Default, 'Chuys', 1.2, 2.0, 'Mexican', 'Fajitas', TRUE, '2/10/18'
-- );

-- INSERT INTO restaurant VALUES (
--     Default, 'Olive Garden', 0.4, 3.9, 'Italian', 'Pasta', TRUE, '8/19/18'
-- );


-- SELECT name FROM restaurant WHERE stars = 5;

-- SELECT favorite_dish FROM restaurant WHERE stars = 5;

-- SELECT id FROM restaurant WHERE name = 'Chuys';

-- SELECT name FROM restaurant WHERE category = 'BBQ';

-- SELECT name FROM restaurant WHERE takeout = TRUE;

-- SELECT name FROM restaurant WHERE takeout = TRUE and category = 'BBQ';

-- SELECT name FROM restaurant WHERE distance < 2;

-- SELECT name FROM restaurant WHERE last_visited < '2018-08-20';

-- SELECT name FROM restaurant WHERE last_visited < '2018-08-20' and stars = 5;

-- SELECT * FROM restaurant ORDER BY distance ASC;

-- SELECT * FROM restaurant ORDER BY distance ASC limit 2;

-- SELECT * FROM restaurant ORDER BY stars DESC limit 2;

-- SELECT * FROM restaurant WHERE distance < 2 ORDER BY stars DESC limit 2;

-- SELECT COUNT(*) from restaurant;

-- SELECT COUNT(category) from restaurant;

-- SELECT AVG(stars) category from restaurant GROUP BY category;

-- SELECT MAX(stars) category from restaurant GROUP BY category;
