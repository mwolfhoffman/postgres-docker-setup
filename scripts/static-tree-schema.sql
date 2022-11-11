CREATE DATABASE world
WITH
  ENCODING 'UTF8';

CREATE TABLE
  countries (name TEXT PRIMARY KEY, population BIGINT);

CREATE TABLE
  states (
    name TEXT PRIMARY KEY,
    population BIGINT,
    country TEXT REFERENCES countries (name)
  );

CREATE TABLE
  cities (
    name TEXT PRIMARY KEY,
    population BIGINT,
    state TEXT REFERENCES states (name)
  );

INSERT INTO
  countries (name, population)
VALUES
  ('United States', 329500000),
  ('Australia', 25690000),
  ('Spain', 47350000);

INSERT INTO
  states (name, country, population)
VALUES
  ('Texas', 'United States', 29000000),
  ('California', 'United States', 39510000),
  ('New South Wales', 'Australia', 8166000),
  ('Victoria', 'Australia', 6681000),
  ('Comunidad de Madrid', 'Spain', 6642000);

INSERT INTO
  cities (name, state, population)
VALUES
  ('Dallas', 'Texas', 1331000),
  ('Austin', 'Texas', 950807),
  ('Houston', 'Texas', 2310000),
  ('Los Angeles', 'California', 3967000),
  ('San Francisco', 'California', 874961),
  ('San Diego', 'California', 1410000),
  ('Sydney', 'New South Wales', 5312000),
  ('Newcastle', 'New South Wales', 322278),
  ('Melbourne', 'Victoria', 5078000),
  ('Geelong', 'Victoria', 253269),
  ('Madrid', 'Comunidad de Madrid', 3223000),
  ('Móstoles', 'Comunidad de Madrid', 207095);