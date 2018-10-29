SELECT uun 
FROM Students
WHERE uun NOT IN (SELECT student FROM Exams);