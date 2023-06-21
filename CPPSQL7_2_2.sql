CREATE TABLE IF NOT EXISTS departments(
id serial PRIMARY KEY,
name varchar(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS bosses(
id int PRIMARY KEY REFERENCES departments(id),
name varchar(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
id serial PRIMARY KEY,
name varchar(50) UNIQUE NOT NULL,
fk_department int REFERENCES departments(id),
fk_boss int REFERENCES bosses(id)
);

