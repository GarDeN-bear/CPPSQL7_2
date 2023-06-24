
CREATE TABLE IF NOT EXISTS employee(
id serial PRIMARY KEY,
name varchar(50) UNIQUE NOT NULL,
department varchar(50) NOT NULL,
boss_id int REFERENCES employee(id)
);

