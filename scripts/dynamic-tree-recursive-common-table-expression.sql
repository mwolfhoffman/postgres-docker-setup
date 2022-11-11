CREATE DATABASE world WITH ENCODING 'UTF8';

CREATE TYPE admin_level AS ENUM ('country', 'state', 'city');

CREATE TABLE locations (
	name 	      TEXT PRIMARY KEY,
    population    BIGINT,
    location_type admin_level,
    parent        TEXT REFERENCES locations(name)
);

INSERT INTO locations(name, parent, population, location_type) VALUES
    ('United States', NULL, 329500000, 'country'),
    ('Australia', NULL, 25690000, 'country'),
    ('Spain', NULL, 47350000, 'country'),
    ('Texas', 'United States', 29000000, 'state'),
    ('California', 'United States', 39510000, 'state'),
    ('New South Wales', 'Australia', 8166000, 'state'),
    ('Victoria', 'Australia', 6681000, 'state'),
    ('Comunidad de Madrid', 'Spain', 6642000, 'state'),
    ('Dallas', 'Texas', 1331000, 'city'),
    ('Austin', 'Texas', 950807, 'city'),
    ('Houston', 'Texas', 2310000, 'city'),
    ('Los Angeles', 'California', 3967000, 'city'),
    ('San Francisco', 'California', 874961, 'city'),
    ('San Diego', 'California', 1410000, 'city'),
    ('Sydney', 'New South Wales', 5312000, 'city'),
    ('Newcastle', 'New South Wales', 322278, 'city'),
    ('Melbourne', 'Victoria', 5078000, 'city'),
    ('Geelong', 'Victoria', 253269, 'city'),
    ('Madrid', 'Comunidad de Madrid', 3223000, 'city'),
    ('Móstoles', 'Comunidad de Madrid', 207095, 'city');