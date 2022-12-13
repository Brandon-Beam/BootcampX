SELECT  COUNT(students.name) as student_count, cohorts.name as cohort_name
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.name) >= 18
ORDER BY COUNT(students.name);
