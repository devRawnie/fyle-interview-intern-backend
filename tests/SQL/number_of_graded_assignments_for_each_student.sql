-- Write query to get number of graded assignments for each student:
SELECT student_id, count(grade) FROM assignments WHERE state='GRADED' GROUP BY student_id;