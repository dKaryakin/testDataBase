CREATE SCHEMA usersAndPets
CREATE TABLE users(
	id serial PRIMARY KEY,
	name VARCHAR (50) UNIQUE NOT NULL
)
CREATE TABLE animals(
	id serial PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL
)
CREATE TABLE pets(
	id serial PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL,
	animal integer REFERENCES animals (id),
	owner integer REFERENCES users (id)
);

COMMENT ON TABLE usersAndPets.animals IS 'This is a table with animals (dog, cat, hamster, cockroach, etc.)';
COMMENT ON TABLE usersAndPets.pets IS 'This is a table with users'' animals (we call them pets)';

GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE usersandpets.animals TO "user";
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE usersandpets.pets TO "user";
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE usersandpets.users TO "user";
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO www;
