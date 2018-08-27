-- Creating the tables 

-- create table artist (
--     id serial primary key,
--     name varchar
-- );

-- create table album (
--     id serial primary key,
--     name varchar,
--     release integer,
--     artist_id integer references artist (id)
-- );

-- create table song (
--     id serial primary key,
--     name varchar,
--     duration integer,
--     album_id integer references album (id),
--     artist_id integer references artist (id)
-- );

-- Adding the Data for each table 

-- INSERT INTO artist 
--     (name)
-- VALUES (
--     'Illenium'
-- );

-- INSERT INTO artist 
--     (name)
-- VALUES (
--     'XXXTentacion'
-- );

-- INSERT INTO artist 
--     (name)
-- VALUES (
--     'San Holo'
-- );

-- INSERT INTO artist 
--     (name)
-- VALUES (
--     'Juice Wrld'
-- );

-- INSERT INTO artist 
--     (name)
-- VALUES (
--     'Chance the Rapper'
-- );

-- INSERT INTO album 
--     (name, release, artist_id)
-- VALUES (
--     'Made Up 1', 1980, 1
-- );

-- INSERT INTO album 
--     (name, release, artist_id)
-- VALUES (
--     'Wild and Fake', 1999, 2
-- );

-- INSERT INTO album 
--     (name, release, artist_id)
-- VALUES (
--     'New', 2001, 3
-- );

-- INSERT INTO album 
--     (name, release, artist_id)
-- VALUES (
--     'Suh', 1993, 3
-- );

-- INSERT INTO album 
--     (name, release, artist_id)
-- VALUES (
--     'More Fake News', 1969, 4
-- );

-- INSERT INTO album 
--     (name, release, artist_id)
-- VALUES (
--     'Finished', 1996, 5
-- );

-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song1', 383, 1, 1
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song2', 504, 1, 1
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song3', 428, 1, 1
-- );

-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song1', 317, 2, 2
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song2', 276, 2, 2
-- );

-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song1', 290, 3, 3
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song2', 324, 3, 3
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song1a', 321, 3, 4
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song2a', 321, 3, 4
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song3a', 218, 3, 4
-- );

-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song1', 118, 4, 5
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song2', 143, 4, 5
-- );

-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song1', 241, 5, 6
-- );
-- INSERT INTO song 
--     (name, duration, artist_id, album_id)
-- VALUES (
--     'song3', 272, 4, 5
-- );

--1

-- select song.name, album.name from song
-- join album on song.album_id = album.id;

--2

-- select artist.name, album.name from album
-- join artist on album.artist_id = artist_id and artist.name = 'Chance the Rapper';

--3

-- select max(duration) from song;

--4

-- select album.name from album
-- where album.release <= 1999 and album.release >= 1960;

--5
-- select album.name, album.release
-- from album
-- where album.release > 1990 and album.release <= 1999;

--6 
-- select * from artist
-- join album on artist_id = album.artist_id
-- where 
--     album.release = (
--         select max(album.release)
--         from album
--         where album.artist_id = artist.id
--     );

--7
-- SELECT album.name, SUM(song.duration)
--     FROM album, song
--     WHERE album.id = song.album_id
--     GROUP BY album.name;

 -- 8
-- SELECT album.name, SUM(song.duration)
--     FROM album, song
--     WHERE album.id = song.album_id
--     GROUP BY album.name LIMIT 1;

-- 9
-- SELECT
-- 	artist.name,
-- 	count(album.name)
-- FROM
-- 	artist
-- LEFT OUTER JOIN
-- 	album on artist.id = album.artist_id
-- GROUP BY
-- 	artist.id
-- LIMIT
-- 	5;

-- 10
-- SELECT artist.name, song.name 
--     FROM artist 
--     INNER JOIN song ON artist.id = song.artist_id AND artist.name = 'Illenium';