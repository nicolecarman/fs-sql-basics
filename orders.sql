-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(100),
    product_price FLOAT,
    quantity INTEGER
);


-- Add 5 orders to the orders table. Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
	VALUES (3, 'cat bed', 19.99, 1),
  			(4, 'organic cat food', 12.99, 1),
            (7, 'scratch post', 6.99, 2),
            (12, 'litter box', 14.99, 1),
            (18, 'cat toy', 1.99, 3);


-- Select all the records from the orders table.
SELECT * FROM orders;


-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;


-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;


-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 18;