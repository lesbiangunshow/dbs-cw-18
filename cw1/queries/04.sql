﻿SELECT student
FROM Exams
GROUP BY student
HAVING (COUNT(CASE WHEN grade < 40 THEN 1 ELSE NULL END)*1.0)/(COUNT(grade)*1.0) > 0.3;