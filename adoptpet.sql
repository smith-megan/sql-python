CREATE TABLE adopter(
  adopter_id SERIAL PRIMARY KEY,
  username VARCHAR(40),
  password VARCHAR (40),
  email VARCHAR (40),
  phone VARCHAR(14),
  ideal_pet_temperment INT NOT NULL REFERENCES temperment(temperment_id),
  ideal_shelter INT NOT NULL REFERENCES shelter(shelter_id)
);

CREATE TABLE pet (
  pet_id SERIAL PRIMARY KEY,
  pet_temperment INT NOT NULL REFERENCES temperment(temperment_id),
  breed VARCHAR(30),
  size INT,
  name VARCHAR(30),
  animal VARCHAR(30),
  age INT,
  shelter_id INT NOT NULL REFERENCES shelter(shelter_id)
);

CREATE TABLE temperment (
  temperment_id SERIAL PRIMARY KEY,
  type VARCHAR(15),
  age_group VARCHAR(15)
);

CREATE TABLE shelter (
  shelter_id SERIAL PRIMARY KEY,
  address VARCHAR(40),
  phone VARCHAR(14)
);