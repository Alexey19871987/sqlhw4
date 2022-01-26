CREATE TABLE IF NOT EXISTS genre(
id serial PRIMARY KEY,
name varchar(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS executors(
id serial PRIMARY KEY,
name varchar(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS album(
id serial PRIMARY KEY,
name varchar NOT NULL,
year_v integer NOT NULL
);
CREATE TABLE IF NOT EXISTS collector(
id serial PRIMARY KEY,
name varchar NOT NULL,
year_v integer NOT NULL 
);
create table if not exists genre_executors (
genre_id integer references genre(id),
executors_id integer references executors(id),
constraint pk primary key (genre_id, executors_id)
);
create table if not exists executors_album(
executors_id integer references executors(id),
album_id integer references album(id),
constraint ae primary key (album_id, executors_id)
);
create table if not exists trek (
id serial primary key,
name varchar(40),
duration integer,
album_id integer references album(id)
);
create table if not exists trek_collection (
trek_id integer references trek(id),
collector_id integer references collector(id),
constraint tk primary key (trek_id, collector_id) 
);