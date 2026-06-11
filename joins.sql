create database joins;
use joins;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(30),
    phone VARCHAR(15)
);

CREATE TABLE order_info (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_name VARCHAR(50),
    quantity INT,

    FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
);

INSERT INTO customer VALUES (101, 'Mohan', 25, 'Bengaluru', '9876543210');

INSERT INTO customer VALUES (102, 'Harsha', 28, 'Hyderabad', '9876543211');

INSERT INTO customer VALUES (103, 'Shannu', 22, 'Chennai', '9876543212');

INSERT INTO customer VALUES (104, 'Ravi', 30, 'Mumbai', '9876543213');

INSERT INTO customer VALUES (105, 'Priya', 27, 'Pune', '9876543214');

INSERT INTO order_info VALUES
(1001, 101, '2026-06-01', 'Laptop', 1),
(1002, 101, '2026-06-02', 'Mouse', 2),
(1003, 102, '2026-06-03', 'Mobile', 1),
(1004, 103, '2026-06-04', 'Keyboard', 1),
(1005, 103, '2026-06-05', 'Monitor', 2),
(1006, 104, '2026-06-06', 'Printer', 1);

select * from customer;

select * from order_info;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c LEFT JOIN order_info o ON c.customer_id = o.customer_id;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c RIGHT JOIN order_info o ON c.customer_id = o.customer_id;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c INNER JOIN order_info o ON c.customer_id = o.customer_id;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c, order_info o WHERE c.customer_id = o.customer_id;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c LEFT OUTER JOIN order_info o ON c.customer_id = o.customer_id;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c RIGHT OUTER JOIN order_info o ON c.customer_id = o.customer_id;


SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c LEFT OUTER JOIN order_info o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c RIGHT OUTER JOIN order_info o ON c.customer_id = o.customer_id;

SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c RIGHT OUTER JOIN order_info o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name FROM customer c LEFT OUTER JOIN order_info o ON c.customer_id = o.customer_id;
