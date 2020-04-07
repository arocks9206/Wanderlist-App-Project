DROP TABLE destinations;
DROP TABLE countries;


CREATE TABLE countries
(
  id SERIAL primary key,
  country VARCHAR(255)
);

CREATE TABLE destinations
(
  id SERIAL primary key,
  city VARCHAR(255),
  visited BOOLEAN,
  country_id INT REFERENCES countries(id)
);
