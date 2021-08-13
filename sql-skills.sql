INSERT INTO artist(name)
VALUES ('imagine dragons'),
('one republic'),
 ('twenty-one pilots');

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city='Calgary';

SELECT * FROM employee
WHERE reports_to=2;

SELECT COUNT(*) FROM employee
WHERE city='Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country='USA';

SELECT MIN(total) FROM invoice
--or if order details desired--
SELECT * FROM invoice
ORDER BY total DESC
LIMIT 1;

SELECT MAX(total) FROM invoice
--or if order details desired--
SELECT * FROM invoice
ORDER BY total
LIMIT 1;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice;

--JOIN SECTION--

SELECT i.invoice_id, il.unit_price FROM invoice_line il
JOIN invoice i
ON i.invoice_id=il.invoice_id
WHERE unit_price>.99;

SELECT i.invoice_date, c.first_name, c.last_name, total FROM invoice i
JOIN customer c
ON i.customer_id=c.customer_id;

SELECT c.first_name "customer first name", c.last_name "customer last name", e.first_name "support first name", e.last_name "support last name" FROM customer c
JOIN employee e
ON c.support_rep_id=e.employee_id;

SELECT al.title, a.name FROM album al
JOIN artist a
ON a.artist_id=al.artist_id;