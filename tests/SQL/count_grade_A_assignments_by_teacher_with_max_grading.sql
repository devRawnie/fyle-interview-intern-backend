-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT teacher_id, count(grade) FROM assignments WHERE teacher_id = (
    SELECT teacher_id FROM assignments GROUP BY teacher_id HAVING state = 'GRADED' ORDER BY count(grade) DESC LIMIT 1
) and grade = 'A';