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


-- PostSQL Relationships Example

-- CREATE TABLE author (
--     id serial PRIMARY KEY,
--     name VARCHAR
-- );

-- CREATE TABLE article (
--     id serial PRIMARY KEY,
--     title VARCHAR,
--     author_id integer REFERENCES author (id)
-- );

-- INSERT INTO author VALUES (
--     DEFAULT, 'Travis'
-- );

-- INSERT INTO author VALUES (
--     DEFAULT, 'Matt'
-- );

-- INSERT INTO author VALUES (
--     DEFAULT, 'Sam'
-- );

-- INSERT INTO author VALUES (
--     DEFAULT, 'Tracy'
-- );

-- INSERT INTO author VALUES (
--     DEFAULT, 'Eric'
-- );

-- INSERT INTO article VALUES (
--     DEFAULT, 'Cats', 3
-- );


-- INSERT INTO article VALUES (
--     DEFAULT, 'Dogs', 3
-- );


-- INSERT INTO article VALUES (
--     DEFAULT, 'Birds', 3
-- );


-- INSERT INTO article VALUES (
--     DEFAULT, 'Chickens', 3
-- );


-- INSERT INTO article VALUES (
--     DEFAULT, 'Rabbits', 3
-- );

-- SELECT * FROM article WHERE author_id = 1;

-- SELECT * FROM article, author 
--     WHERE article.author_id = author.id and name = 'Sam';

-- SELECT * FROM article 
--     INNER JOIN author   
--         on article.author_id = author.id;

SELECT * FROM article
    left outer join author  
        on article.author_id = author.id;