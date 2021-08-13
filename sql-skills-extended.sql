SELECT * FROM artist a
ORDER BY a.name DESC
LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT MAX(birth_date) FROM employee;
--or if details desired--
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT MIN(birth_date) FROM employee;
--or if details desired--
SELECT * FROM employee
ORDER BY birth_date
LIMIT 1;

SELECT COUNT(invoice_id) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

SELECT AVG(total) FROM invoice;

SELECT playlist_track_id FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name LIKE 'Music';

SELECT p.playlist_id, t.name FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
JOIN track t
ON t.track_id=pt.track_id
WHERE pt.playlist_id =5;

SELECT p.name, t.name FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
JOIN track t
ON t.track_id=pt.track_id;

SELECT t.name, a.title, g.name FROM track t
JOIN album a
ON a.album_id = t.album_id
JOIN genre g
ON g.genre_id=t.genre_id
WHERE g.name='Alternative & Punk';