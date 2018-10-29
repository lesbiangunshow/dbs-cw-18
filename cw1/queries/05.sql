SELECT Degrees.code, SUM(credits)
FROM Programmes, Courses, Degrees
WHERE course = Courses.code AND degree = Degrees.code
GROUP BY Degrees.code;