-- OLTP Example: A transactional schema for booking operations

-- Stores customer information
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

-- Stores city information
CREATE TABLE cities (
    city_id SERIAL PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    region VARCHAR(100)
);

-- Stores bookings made by customers for specific cities
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    city_id INT NOT NULL,
    booking_date DATE NOT NULL,
    num_days INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);
