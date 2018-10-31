WITH UG AS(
	SELECT course 
	FROM Degrees, Courses, Programmes
	WHERE course = Courses.code AND degree = Degrees.code AND type='UG'
), PG AS(
	SELECT course 
	FROM Degrees, Courses, Programmes
	WHERE course = Courses.code AND degree = Degrees.code AND type='PG'
)

SELECT DISTINCT UG.course
FROM UG, PG
Where UG.course = PG.course;