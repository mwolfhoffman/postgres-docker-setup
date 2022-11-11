CREATE DATABASE world_tree WITH ENCODING 'UTF8';

CREATE TYPE admin_level AS ENUM ('country', 'state', 'city');

CREATE TABLE world (
	name 	      TEXT PRIMARY KEY,
	label 		  TEXT CHECK (label ~* '^[A-Za-z0-9_]{1,255}$'),
    population    BIGINT,
    location_type admin_level,
    path          ltree
);

CREATE TABLE world (
	name 	      TEXT PRIMARY KEY,
	label 		  TEXT CHECK (label ~* '^[A-Za-z0-9_]{1,255}$'),
    population    BIGINT,
    location_type admin_level,
    path          ltree
);

CREATE INDEX path_idx ON world USING btree(path);

INSERT INTO world(name, label, population, location_type, path) VALUES
    ('United States', 'United_States', 329500000, 'country', 'United_States'),
    ('Australia', 'Australia', 25690000, 'country', 'Australia'),
    ('Spain', 'Spain', 47350000, 'country', 'Spain'),
    ('Texas', 'Texas', 29000000, 'state', 'United_States.Texas'),
    ('California', 'California', 39510000, 'state', 'United_States.California'),
    ('New South Wales', 'New_South_Wales', 8166000, 'state', 'Australia.New_South_Wales'),
    ('Victoria', 'Victoria', 6681000, 'state', 'Australia.Victoria'),
    ('Comunidad de Madrid', 'Comunidad_de_Madrid', 6642000, 'state', 'Spain.Comunidad_de_Madrid'),
    ('Dallas', 'Dallas', 1331000, 'city', 'United_States.Texas.Dallas'),
    ('Austin', 'Austin', 950807, 'city', 'United_States.Texas.Austin'),
    ('Houston', 'Houston', 2310000, 'city', 'United_States.Texas.Houston'),
    ('Los Angeles', 'Los_Angeles', 3967000, 'city', 'United_States.California.Los_Angeles'),
    ('San Francisco', 'San_Francisco', 874961, 'city', 'United_States.California.San_Francisco'),
    ('San Diego', 'San_Diego', 1410000, 'city', 'United_States.California.San_Diego'),
    ('Sydney', 'Sydney', 5312000, 'city', 'Australia.New_South_Wales.Sydney'),
    ('Newcastle', 'Newcastle', 322278, 'city', 'Australia.New_South_Wales.Newcastle'),
    ('Melbourne', 'Melbourne', 5078000, 'city', 'Australia.Victoria.Melbourne'),
    ('Geelong', 'Geelong', 253269, 'city', 'Australia.Victoria.Geelong'),
    ('Madrid', 'Madrid', 3223000, 'city', 'Spain.Comunidad_de_Madrid.Madrid'),
    ('Móstoles', 'Mostoles', 207095, 'city', 'Spain.Comunidad_de_Madrid.Mostoles');