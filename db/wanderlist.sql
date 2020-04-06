DROP TABLE destinations;
DROP TABLE countries;


CREATE TABLE destinations
(
  id SERIAL primary key,
  city VARCHAR(255),
  bucketlist BOOLEAN,
  visited BOOLEAN,
  country_id INT REFERENCES countries(id) ON DELETE CASCADE
);

CREATE TABLE countries
(
  id SERIAL primary key,
  country VARCHAR(255)
);
