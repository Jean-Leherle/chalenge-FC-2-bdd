-- Active: 1682763144408@@127.0.0.1@5432@chalfc
BEGIN;

DROP TABLE IF EXISTS movie, actor;
DROP DOMAIN IF EXISTS year;
CREATE DOMAIN year AS INTEGER
    not null
    CHECK (VALUE >= 1895 AND VALUE <= 3000);
CREATE TABLE
    "movie"(
        "movie_id" INTEGER GENERATED ALWAYS as IDENTITY PRIMARY KEY,
        "title" VARCHAR(50) NOT NULL,
        "release_year" year,
        "duration" INTEGER NOT NULL
    );

CREATE TABLE "actor"(
  "actor_id" integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL,
  "birth_date" DATE NOT NULL,
  "role" VARCHAR(100) NOT NULL,
  "movie_code" integer NOT NULL REFERENCES movie("movie_id")
 );
 COMMIT;

