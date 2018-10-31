SELECT student, COUNT(case when grade >= 80 then 1 end),
COUNT(case when grade < 80 and grade >= 60 then 1 end),
COUNT(case when grade < 60 and grade >= 40 then 1 end),
COUNT(case when grade < 40 then 1 end)
FROM exams
GROUP BY student;