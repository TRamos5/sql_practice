-- DROP TABLE student;

-- CREATE TABLE student (
--     name varchar,
--     website varchar,
--     point integer,
--     gender char(1)
-- );

-- INSERT INTO student VALUES (
--     'Travis', 'me@me.com', 1, 'M', 'Houston'
-- );

-- INSERT INTO student (name, point) VALUES (
--     'Paul', 1
-- );

-- CREATE TABLE student2 (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name VARCHAR,
--     github VARCHAR,
--     point INTEGER,
--     start_date DATE,
--     graduated BOOLEAN
-- );

-- INSERT INTO student2 VALUES (
--     Default, 'Travis', 'me@me.com', 6, '1/1/2018', FALSE
-- );
-- INSERT INTO student2 VALUES (
--     Default, 'Matt', 'me@me.com', 6, '1/1/2018', FALSE
-- );
-- INSERT INTO student2 VALUES (
--     Default, 'Eric', 'me@me.com', 6, '1/1/2018', FALSE
-- );
-- INSERT INTO student2 VALUES (
--     Default, 'Hussein', 'me@me.com', 6, '1/1/2018', FALSE
-- );

-- UPDATE student2 SET point = 8 WHERE id = 1;