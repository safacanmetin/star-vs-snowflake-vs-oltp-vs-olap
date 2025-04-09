-- OLAP Example: Aggregated data for analysis and reporting

-- This table stores annual tourism statistics per city
CREATE TABLE city_tourism_summary (
    city_name VARCHAR(100),
    year INT,
    total_tourists INT,
    total_income_usd DECIMAL(14, 2)
);

-- This table stores average income per city in each region annually
CREATE TABLE region_summary (
    region_name VARCHAR(100),
    year INT,
    avg_income_per_city DECIMAL(14, 2)
);
