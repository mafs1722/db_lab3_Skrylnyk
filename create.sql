CREATE TABLE ProductionStudios
(
  StudioID INT NOT NULL,
  StudioName VARCHAR(50) NOT NULL,
  Country VARCHAR(50) NOT NULL,
  YearFounded DATE NOT NULL,
  PRIMARY KEY (StudioID)
);

CREATE TABLE Movies
(
  MovieID_ VARCHAR(50) NOT NULL,
  Title VARCHAR(50) NOT NULL,
  ReleaseYear DATE NOT NULL,
  Director VARCHAR(50) NOT NULL,
  Genre VARCHAR(50) NOT NULL,
  Duration INT NOT NULL,
  Country VARCHAR(50) NOT NULL,
  StudioID INT NOT NULL,
  PRIMARY KEY (MovieID_),
  FOREIGN KEY (StudioID) REFERENCES ProductionStudios(StudioID)
);

CREATE TABLE Actor
(
  ActorID VARCHAR(50) NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  BirthYear DATE NOT NULL,
  Country VARCHAR(50) NOT NULL,
  MovieID_ VARCHAR(50) NOT NULL,
  PRIMARY KEY (ActorID),
  FOREIGN KEY (MovieID_) REFERENCES Movies(MovieID_)
);