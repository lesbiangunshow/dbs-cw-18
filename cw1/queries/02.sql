SELECT COUNT(degree)
FROM Students, Degrees
WHERE degree = code AND type='PG';