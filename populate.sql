-- Додайте дані про студії та їх зв'язок із фільмами
INSERT INTO ProductionStudios (StudioID, StudioName, Country, YearFounded)
VALUES
(1, 'Sony Pictures', 'USA', '1989-08-07'), -- The Shawshank Redemption
(2, 'Columbia Pictures', 'USA', '1918-01-10'), -- The Godfather
(3, 'Warner Bros.', 'USA', '1923-04-04'), -- The Dark Knight
(4, 'Miramax Films', 'USA', '1979-10-01'), -- Pulp Fiction
(5, 'Paramount Pictures', 'USA', '1912-05-08'), -- Forrest Gump
(6, 'Village Roadshow Pictures', 'Australia', '1986-04-10'), -- The Matrix
(7, 'Syncopy', 'USA', '2001-01-01'), -- Inception
(8, 'Universal Pictures', 'USA', '1912-04-30'), -- Schindler's List
(9, 'New Line Cinema', 'USA', '1967-03-17'), -- The Lord of the Rings: The Fellowship of the Ring
(10, '20th Century Fox', 'USA', '1935-05-31'); -- Fight Club

select * from ProductionStudios

-- Вставка даних для 10 фільмів
INSERT INTO Movies (MovieID_, Title, ReleaseYear, Director, Genre, Duration, Country, StudioID)
VALUES
(1, 'The Shawshank Redemption', '1994-09-23', 'Frank Darabont', 'Drama', 142, 'USA', 1),
(2, 'The Godfather', '1972-03-24', 'Francis Ford Coppola', 'Crime', 175, 'USA', 2),
(3, 'The Dark Knight', '2008-07-18', 'Christopher Nolan', 'Action', 152, 'USA', 3),
(4, 'Pulp Fiction', '1994-10-14', 'Quentin Tarantino', 'Crime', 154, 'USA', 4),
(5, 'Forrest Gump', '1994-07-06', 'Robert Zemeckis', 'Drama', 142, 'USA', 5),
(6, 'The Matrix', '1999-03-31', 'The Wachowskis', 'Action', 136, 'USA', 6),
(7, 'Inception', '2010-07-16', 'Christopher Nolan', 'Sci-Fi', 148, 'USA', 7),
(8, 'Schindler''s List', '1993-11-30', 'Steven Spielberg', 'Biography', 195, 'USA', 8),
(9, 'The Lord of the Rings: The Fellowship of the Ring', '2001-12-19', 'Peter Jackson', 'Adventure', 178, 'USA', 9),
(10, 'Fight Club', '1999-10-15', 'David Fincher', 'Drama', 139, 'USA', 10);

select * from Movies

-- Додайте дані про акторів до таблиці Actor
INSERT INTO Actor (ActorID, FirstName, LastName, BirthYear, Country, MovieID_)
VALUES
(1, 'Tim', 'Robbins', '1958-10-16', 'USA', 1), -- The Shawshank Redemption
(2, 'Marlon', 'Brando', '1924-04-03', 'USA', 2), -- The Godfather
(3, 'Christian', 'Bale', '1974-01-30', 'Wales', 3), -- The Dark Knight
(4, 'John', 'Travolta', '1954-02-18', 'USA', 4), -- Pulp Fiction
(5, 'Tom', 'Hanks', '1956-07-09', 'USA', 5), -- Forrest Gump
(6, 'Keanu', 'Reeves', '1964-09-02', 'Lebanon', 6), -- The Matrix
(7, 'Leonardo', 'DiCaprio', '1974-11-11', 'USA', 7), -- Inception
(8, 'Liam', 'Neeson', '1952-06-07', 'Northern Ireland', 8), -- Schindler's List
(9, 'Elijah', 'Wood', '1981-01-28', 'USA', 9), -- The Lord of the Rings: The Fellowship of the Ring
(10, 'Edward', 'Norton', '1969-08-18', 'USA', 10); -- Fight Club

select * from Actor
