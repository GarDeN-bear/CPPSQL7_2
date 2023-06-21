create table if not exists genres 
(id SERIAL primary KEY,
name VARCHAR(60) NOT NULL
);

create table if not exists performers 
(id SERIAL primary key,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_performers( 
genres_id INT REFERENCES genres(id),
performers_id INT REFERENCES performers(id),
CONSTRAINT genres_performers_pk PRIMARY KEY (genres_id, performers_id)
);

create table if not exists albums 
(id SERIAL primary KEY,
name VARCHAR(60) NOT NULL,
date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_albums(
performers_id INT REFERENCES performers(id),
albums_id INT REFERENCES albums(id),
CONSTRAINT performers_albums_pk PRIMARY KEY (performers_id, albums_id)
);


create table if not exists tracks 
(id SERIAL primary KEY,
name VARCHAR(60) NOT NULL,
duration INT NOT NULL,
fk_albums INT REFERENCES albums(id)
);