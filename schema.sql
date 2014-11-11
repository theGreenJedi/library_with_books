DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS patrons;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS reviews;

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  nationality VARCHAR(255),
  birth_year INTEGER
);

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title VARCHAR(255),
  publication_date INTEGER,
  author_id INTEGER
);


CREATE TABLE patrons (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name  VARCHAR(255)
);

CREATE TABLE genres (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(65536)
);


CREATE TABLE reviews (
  id INTEGER PRIMARY KEY,
  comment VARCHAR(65535),

  patron_id INTEGER,
  book_id INTEGER
);


