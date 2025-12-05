-- Create database
CREATE DATABASE sample_store;
USE sample_store;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample customers
INSERT INTO customers (name, email, phone) VALUES
('Ashwin Kumar', 'ashwin@example.com', '9876543210'),
('Priya Sharma', 'priya@example.com', '9123456780'),
('Rohan Singh', 'rohan@example.com', '9001112223');

-- Insert sample products
INSERT INTO products (name, price, stock) VALUES
('Laptop', 55000.00, 10),
('Headphones', 1500.00, 50),
('Keyboard', 800.00, 30);

-- Insert sample orders
INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2024-01-12'),
(2, 2, 2, '2024-02-05'),
(1, 3, 3, '2024-03-18');
