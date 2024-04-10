-- create database
create database universe;

-- create table
create table galaxy(galaxy_id serial primary key,name varchar(30) not null unique,type int,size numeric,age int);
create table star(star_id serial primary key,name varchar(30) not null,type int,size numeric,age int,mass numeric,galaxy_id int references galaxy(galaxy_id));
create table planet(planet_id serial primary key,name varchar(30) not null unique,mass numeric,water bool,air bool,star_id int references star(star_id));
create table moon(moon_id serial primary key,name varchar(30) not null,mass numeric,planet_id int references planet(planet_id),remark text);
CREATE TABLE observation (
    observation_id serial PRIMARY KEY,
    observed_id INT NOT NULL,
    observed_type int NOT NULL,
    date DATE NOT NULL,
    observer VARCHAR(255) NOT NULL,
    telescope VARCHAR(255),
    notes TEXT,
    UNIQUE (observed_id, observed_type)
)

-- insert table
INSERT INTO galaxy (name, type, size, age) VALUES ('Andromeda Galaxy', 1, 220000.0, 10000);
INSERT INTO galaxy (name, type, size, age) VALUES ('Milky Way', 1, 100000.0, 13600);
INSERT INTO galaxy (name, type, size, age) VALUES ('Whirlpool Galaxy', 2, 60000.0, 400);
INSERT INTO galaxy (name, type, size, age) VALUES ('Sombrero Galaxy', 2, 50000.0, 13000);
INSERT INTO galaxy (name, type, size, age) VALUES ('Pinwheel Galaxy', 3, 170000.0, 100);
INSERT INTO galaxy (name, type, size, age) VALUES ('Triangulum Galaxy', 3, 60000.0, 3200);
INSERT INTO galaxy (name, type, size, age) VALUES ('Antennae Galaxies', 4, 50000.0, 200);
INSERT INTO galaxy (name, type, size, age) VALUES ('Hoag''s Object', 4, 100000.0, 2000);
INSERT INTO galaxy (name, type, size, age) VALUES ('Large Magellanic Cloud', 5, 14000.0, 1300);
INSERT INTO galaxy (name, type, size, age) VALUES ('Small Magellanic Cloud', 5, 7000.0, 3000);

INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Betelgeuse', 1, 950.0, 10, 20.0, 1);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Rigel', 2, 79.0, 8, 21.0, 1);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Sirius', 3, 2.4, 230, 2.1, 2);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Canopus', 3, 71.0, 25, 15.0, 2);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Vega', 4, 2.8, 455, 2.1, 2);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Arcturus', 4, 25.0, 7100, 1.1, 2);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Aldebaran', 5, 44.0, 450, 1.6, 1);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Pollux', 5, 8.8, 590, 1.9, 2);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Antares', 6, 680.0, 12, 12.0, 2);
INSERT INTO star (name, type, size, age, mass, galaxy_id) VALUES ('Mira', 6, 370.0, 400, 2.0, 2);

INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Earth', 1.0, true, true, 1);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Mars', 0.107, false, true, 1);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Venus', 0.815, false, true, 1);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Jupiter', 317.8, false, true, 2);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Saturn', 95.159, false, true, 2);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Uranus', 14.536, false, true, 2);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Neptune', 17.147, false, true, 2);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Proxima Centauri b', 1.2, true, true, 3);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-16c', 0.333, false, true, 4);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-186g', 1.1, true, true, 4);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-452c', 5.0, true, true, 5);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-62f', 1.6, true, true, 5);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-62g', 1.4, true, true, 5);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Trappist-1d', 0.772, true, true, 6);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Trappist-1e', 0.934, true, true, 6);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Trappist-1h', 1.148, true, true, 6);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-16d', 0.333, false, false, 7);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-186h', 1.1, true, true, 7);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-452d', 5.0, true, true, 8);
INSERT INTO planet (name, mass, water, air, star_id) VALUES ('Kepler-62h', 1.6, true, true, 8);

INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Luna', 0.0123, 1, 'Earth''s only natural satellite');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Phobos', 0.0000000073, 2, 'The larger and closer of Mars'' two moons');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Deimos', 0.0000000015, 2, 'The smaller and more distant of Mars'' two moons');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Io', 0.015, 4, 'Innermost of Jupiter''s four major moons');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Europa', 0.008, 4, 'Believed to have a subsurface ocean');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Ganymede', 0.025, 4, 'Largest moon in the Solar System');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Callisto', 0.018, 4, 'Outermost of Jupiter''s four major moons');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Titan', 0.0225, 5, 'Second-largest moon in the Solar System');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Enceladus', 0.0001, 5, 'Known for its subsurface ocean and geysers');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Mimas', 0.000038, 5, 'Smallest of Saturn''s major moons');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Triton', 0.0035, 7, 'Largest moon of Neptune');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Charon', 0.00218, 8, 'Pluto''s largest moon, and a dwarf planet-moon binary system');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Nix', 0.00000000015, 8, 'Small inner moon of Pluto');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Hydra', 0.000000004, 8, 'Small outer moon of Pluto');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Ceres', 0.00016, 9, 'Largest object in the asteroid belt');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Pallas', 0.000011, 9, 'Second-largest asteroid and the third-most-massive object in the asteroid belt');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Vesta', 0.000009, 9, 'Fourth-largest asteroid and one of the brightest objects in the solar system');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Hygiea', 0.000004, 9, 'Fourth-largest asteroid and the largest in the main asteroid belt');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Thisbe', 0.0000004, 9, 'Medium-sized main-belt asteroid');
INSERT INTO moon (name, mass, planet_id, remark) VALUES ('Euphrosyne', 0.0000003, 9, 'Moderately large main-belt asteroid');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (1234, 1, '2023-04-01', 'John Doe', 'Hubble Space Telescope', 'Observed a new exoplanet');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (5678, 2, '2023-05-15', 'Jane Smith', 'Keck Observatory', 'Detected a nearby supernova');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (9012, 3, '2023-06-30', 'Michael Johnson', 'ALMA Observatory', 'Studied a protoplanetary disk');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (3456, 1, '2023-07-20', 'Emily Chen', 'Gemini Observatory', 'Observed a gravitational lens');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (7890, 2, '2023-08-10', 'David Lee', 'Very Large Telescope', 'Detected a new gamma-ray burst');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (2468, 3, '2023-09-01', 'Sarah Kim', 'Subaru Telescope', 'Studied a dark matter distribution');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (6789, 1, '2023-10-15', 'Tom Wang', 'James Webb Space Telescope', 'Observed the formation of a new star');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (1357, 2, '2023-11-20', 'Lily Nguyen', 'Chandra X-ray Observatory', 'Detected a supermassive black hole');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (9876, 3, '2023-12-01', 'Alex Patel', 'Atacama Large Millimeter/submillimeter Array', 'Studied the formation of a planetary nebula');

INSERT INTO observation (observed_id, observed_type, date, observer, telescope, notes)
VALUES (4321, 1, '2024-01-05', 'Samantha Wong', 'Thirty Meter Telescope', 'Observed the gravitational waves from a binary neutron star merger');