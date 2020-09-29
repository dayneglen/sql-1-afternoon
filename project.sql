CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(150),
  age INTEGER,
  height INTEGER,
  city VARCHAR(200),
  favorite_color VARCHAR(200)
);

INSERT INTO person (name, favorite_color, city, height, age)
VALUES ('Dayne', 'Green', 'Sandy', 6.1, 26);

INSERT INTO person (name, favorite_color, city, height, age)
VALUES ('Stephanie', 'Blue', 'Salt Lake City', 5.5, 66);

INSERT INTO person (name, favorite_color, city, height, age)
VALUES ('George', 'Yellow', 'Atlanta', 6.1, 27);

INSERT INTO person (name, favorite_color, city, height, age)
VALUES ('Steven', 'Green', 'Provo', 6.7, 36);

INSERT INTO person (name, favorite_color, city, height, age)
VALUES ('Maria', 'Purple', 'Sandy', 5.1, 56);

SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'red';

SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT *
FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange';

SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');

CREATE TABLE orders
(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(300),
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders
    (product_price, quantity, person_id, product_name)
VALUES
    (19.99, 2, 1, 'Picture Frames');

INSERT INTO orders
    (product_price, quantity, person_id, product_name)
VALUES
    (199.99, 100, 2, 'Golden Toilet');

INSERT INTO orders
    (product_price, quantity, person_id, product_name)
VALUES
    (12.50, 1, 3, 'Book');

INSERT INTO orders
    (product_price, quantity, person_id, product_name)
VALUES
    (19.99, 1, 2, 'Golden Toilet Paper');

INSERT INTO orders
    (product_price, quantity, person_id, product_name)
VALUES
    (99.99, 1, 1, 'Cereal');

SELECT *
FROM orders;

SELECT SUM(quantity)
from orders;

SELECT SUM(product_price * quantity)
from orders;

SELECT SUM(product_price * quantity)
from orders
WHERE person_id = 1;

INSERT INTO artist
    (name)
VALUES
    ('Samuel');

INSERT INTO artist
    (name)
VALUES
    ('Sammy');

INSERT INTO artist
    (name)
VALUES
    ('Samantha');

SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT *
FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE 'Black%';

SELECT *
FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date)
FROM employee;

SELECT MIN(birth_date)
FROM employee;

SELECT *
from employee
WHERE reports_to = 2;

SELECT COUNT (*)
FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT (*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT COUNT (*)
from invoice
WHERE total < 5;

SELECT COUNT (*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total)
FROM invoice;

SELECT SUM(total)
FROM invoice;