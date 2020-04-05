DROP TABLE beentheres;
DROP TABLE bucketlists;
DROP TABLE destinations;
DROP TABLE users;



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

CREATE TABLE bucketlists
(
  id SERIAL primary key,
  destination_id INT references destinations(id) ON DELETE CASCADE,
  date_added DATE
);

CREATE TABLE beentheres
(
  id SERIAL primary key,
  destination_id INT references destinations(id) ON DELETE CASCADE,
  date_completed DATE
);
