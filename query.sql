-- 1. Запит, який буде виводити всіх акторів що родилися після 1960 року й фільми у 
-- яких вони знімались тривалість більша за 150 хвилин

SELECT A.ActorID, M.MovieID_, A.FirstName, A.LastName, A.BirthYear, M.Title, M.Duration
FROM Actor A
JOIN Movies M ON A.MovieID_ = M.MovieID_
WHERE A.BirthYear > '1960-01-01' AND M.Duration > 150;

-- 2. Запит, який виводити студію та фільм, якщо різниця у виході фільму й створені студії не більше 40 років

SELECT PS.StudioID, M.MovieID_, PS.StudioName, M.Title, PS.YearFounded, M.ReleaseYear
FROM ProductionStudios PS
JOIN Movies M ON PS.StudioID = M.StudioID
WHERE EXTRACT(YEAR FROM M.ReleaseYear) - EXTRACT(YEAR FROM PS.YearFounded) <= 40;

--3. Запит, який виводити студію й актора, якщо актор не з USA, і студія не з USA

SELECT PS.StudioID, A.ActorID, PS.StudioName, A.FirstName, A.LastName, PS.Country AS StudioContry, A.Country AS ActorCountry
FROM Actor A
JOIN Movies M ON A.MovieID_ = M.MovieID_
JOIN ProductionStudios PS ON M.StudioID = PS.StudioID
WHERE A.Country <> 'USA' AND PS.Country <> 'USA';