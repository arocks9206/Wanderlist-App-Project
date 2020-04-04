DROP TABLE users;
DROP TABLE destinations;

CREATE TABLE users
(
  id SERIAL primary key,
  full_name VARCHAR(255),
  current_location VARCHAR(255)
);

CREATE TABLE destinations
(
  id SERIAL primary key,
  continent VARCHAR(255),
  country VARCHAR(255),
  city VARCHAR(255)
);
