-- Active: 1682763144408@@127.0.0.1@5432@chalfc

--1

INSERT INTO
    "movie" (
        "title",
        "release_year",
        "duration"
    )
VALUES ('Doctor Strange', 2016, 115);

--2

SELECT ("name", "birth_date")
from "actor"
where EXTRACT (
        YEAR
        FROM
            "birth_date"
    ) > 1990;

--3

SELECT
    "actor"."name",
    "actor"."role"
from "actor"
    INNER JOIN "movie" on "actor"."movie_code" = "movie"."movie_id"
WHERE
    "movie"."title" = 'Black Widow';

--4

SELECT "title", "release_year"
FROM movie
ORDER BY "release_year" ASC;

--5

SELECT AVG("duration") FROM "movie";

--6

SELECT (
        SELECT count(*)
        from "movie"
        where
            "duration" < 120
    ) as count,
    "title"
from "movie"
where "duration" < 120;

--7

SELECT EXTRACT(
        YEAR
        FROM
            AGE(
                CURRENT_DATE,
                "actor"."birth_date"
            )
    ) as "age"
from "actor"
where
    "actor"."name" = 'Chris Evans';

--8

BEGIN;

DELETE FROM actor
where movie_code IN (SELECT movie.movie_id FROM movie where movie.release_year <2019);
DELETE FROM movie
where release_year < 2019;

commit;
