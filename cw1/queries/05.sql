SELECT Degrees.code, SUM(credits)
FROM Programmes, Courses, Degrees
WHERE course = Courses.code AND degree = Degrees.code
GROUP BY Degrees.code
UNION
SELECT DISTINCT Degrees.code, 0
FROM Programmes, Degrees
WHERE Degrees.code NOT IN(SELECT degree FROM Programmes);