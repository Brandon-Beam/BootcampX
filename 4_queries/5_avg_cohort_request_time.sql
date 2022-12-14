SELECT AVG(completed_at-started_at) as average_assistance_time, cohorts.name as name
FROM assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;