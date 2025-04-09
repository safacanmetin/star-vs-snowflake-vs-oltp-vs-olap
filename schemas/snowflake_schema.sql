-- Snowflake Schema Example: Normalized OLAP structure

-- Fact table: Stores measurable tourism data
CREATE TABLE fact_tourism (
    tourism_id SERIAL PRIMARY KEY,
    city_id INT,
    time_id INT,
    num_tourists INT,
    income_usd DECIMAL(12, 2)
);

-- Dimension: City (normalized with region)
CREATE TABLE dim_city (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(100),
    region_id INT
);

-- Sub-dimension: Region
CREATE TABLE dim_region (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100)
);

-- Dimension: Time (normalized with season)
CREATE TABLE dim_time (
    time_id INT PRIMARY KEY,
    year INT,
    quarter VARCHAR(10),
    season_id INT
);

-- Sub-dimension: Season
CREATE TABLE dim_season (
    season_id INT PRIMARY KEY,
    season_name VARCHAR(20)
);
