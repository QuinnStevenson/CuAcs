/*
  QUICKLY INITIALIZES THE TABLES IN THE DATABASE
*/

BEGIN TRANSACTION;

CREATE TABLE ANIMALS (
  animal_id INTEGER,
  name      TEXT,
  PRIMARY KEY(animal_id)
);

CREATE TABLE PHYSICAL_ATTRIBUTES (
  a_id            INTEGER UNIQUE,
  gender          TEXT,
  age             INTEGER,
  species         TEXT,
  breed           TEXT,
  hair_type       TEXT,
  hair_colour     TEXT,
  aggressiveness  TEXT,
  hyperactivity   TEXT,
  sleep           TEXT,
  noise           TEXT,
  appetite        TEXT,
  maintainance    TEXT,
  outside         TEXT,
  space_required  TEXT,
  child_friendly  TEXT,
  animal_friendly TEXT,
  equipment       TEXT,
  excitibility    TEXT,
  FOREIGN KEY(a_id) REFERENCES ANIMALS(animal_id)
);

CREATE TABLE ANIMAL_CHARACTERISTICS (
  a_id	INTEGER UNIQUE,
  FOREIGN KEY(a_id) REFERENCES ANIMALS(animal_id)
);

CREATE TABLE USERS (
  user_id   INTEGER,
  name TEXT,
  phone_number TEXT,
  address TEXT,
  postal_code TEXT,
  province TEXT,
  PRIMARY KEY(user_id)
);

CREATE TABLE CLIENTS (
  u_id 		          INTEGER UNIQUE,
  username 	        TEXT UNIQUE,
  password 	        TEXT,
  animal_wanted     INTEGER,
  agression         INTEGER,
  hyperactivity     INTEGER,
  sleep             INTEGER,
  animal_loudness   INTEGER,
  food_budget       INTEGER,
  time_avail        INTEGER,
  house_type        INTEGER,
  child_friendly          INTEGER,
  equip_budget      INTEGER,
  have_animals      INTEGER,
  ex_stimuli        INTEGER,
  pref_age          INTEGER,
  pref_gender       INTEGER,
  PRIMARY KEY(username),
  FOREIGN KEY(u_id) REFERENCES USERS(user_id)
);

CREATE TABLE STAFF (
  s_id 		INTEGER UNIQUE,
  username 	TEXT UNIQUE,
  password 	TEXT,
  PRIMARY KEY(username),
  FOREIGN KEY(s_id) REFERENCES USERS(user_id)
);

END TRANSACTION;
