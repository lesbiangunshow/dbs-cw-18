SELECT course, COUNT(degree)
FROM Degrees, Courses, Programmes
WHERE course = Courses.code AND degree = Degrees.code AND type='PG'
GROUP BY course
HAVING COUNT(degree) = 1;