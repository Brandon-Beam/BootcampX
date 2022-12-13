SELECT COUNT(assignment_submissions.*) as total_submissions, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;
