-- Active: 1682763144408@@127.0.0.1@5432@chalfc
BEGIN;

INSERT INTO
    "movie" ("title", "release_year", "duration")
VALUES
('Avenger:endgame', 2019, 181), 
('Spider-Man:Homecoming', 2017,133), 
('Black Panther',2018,134), 
('Captain Marvel',2019,124), 
('Black Widow',2021,134);

INSERT INTO "actor"("name", "birth_date", "role", "movie_code")
VALUES
('Chadwick Boseman','29/11/1976','T''Challa / Black Panther',3),
('Robert Downey Jr.','04/04/1965','Tony Stark / Iron Man',1),
('Brie Larson','04/04/1965','Carol Danvers / Captain Marvel',4),
('Florence Pugh','03/01/1996','Yenela Belova / Black Widow',5),
('Tom Holland','01/06/1996','Peter Parker / Spider Man',2),
('Scarlett Johansson','22/11/1984','Natasha Romanoff / Black Widow',5),
('Chis Evans','13/06/1981','Steve Rogers / Captain America',1);

COMMIT;
