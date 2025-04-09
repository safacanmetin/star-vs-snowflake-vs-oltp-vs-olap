-- Star Schema Example: Denormalized structure for OLAP queries

-- Fact table: Stores measurable tourism data
CREATE TABLE fact_tourism (
    tourism_id SERIAL PRIMARY KEY,
    city_id INT,
    time_id INT,
    num_tourists INT,
    income_usd DECIMAL(12, 2)
);

-- Dimension table: City information
CREATE TABLE dim_city (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(100),
    region VARCHAR(100)
);

-- Dimension table: Time-related attributes
CREATE TABLE dim_time (
    time_id INT PRIMARY KEY,
    year INT,
    quarter VARCHAR(10),
    season VARCHAR(20)
);
