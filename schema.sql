DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS patrons;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS books_patrons;
DROP TABLE IF EXISTS books_genres;
DROP TABLE IF EXISTS ratings;


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


/*
  These are the two tables that are being
  joined.  The names must occur alphabetically.
*/
CREATE TABLE books_patrons (
  id INTEGER PRIMARY KEY,
  book_id   INTEGER,
  patron_id INTEGER
);






CREATE TABLE books_genres (
  id INTEGER PRIMARY KEY,
  book_id  INTEGER,
  genre_id INTEGER
);



CREATE TABLE ratings (
  id INTEGER PRIMARY KEY,
  stars      INTEGER,

  book_id    INTEGER,
  patron_id  INTEGER
);



