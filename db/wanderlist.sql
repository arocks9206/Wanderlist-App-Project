DROP TABLE user_profile;
-- DROP TABLE bucket_list;
DROP TABLE destinations;
-- DROP TABLE been_there;

CREATE TABLE user_profile (
  id SERIAL primary key,
  full_name VARCHAR(255),
  current_location(255)
);

CREATE TABLE destinations (
  id SERIAL primary key,
  continent VARCHAR(255),
  country VARCHAR(255),
  cities VARCHAR(255),
  sights VARCHAR(255)
);

-- CREATE TABLE bucket_list (
--   id SERIAL primary key,
--   continent VARCHAR(255),
--   country VARCHAR(255),
--   cities VARCHAR(255),
--   sites VARCHAR(255)
-- );
