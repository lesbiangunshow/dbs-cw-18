SELECT uun, cast(AVG(grade) AS numeric(4,2))
FROM Students, Exams
WHERE uun = student
GROUP BY uun
HAVING AVG(grade) >= 75;
