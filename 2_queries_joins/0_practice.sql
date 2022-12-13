SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students 
JOIN cohorts ON cohorts.id = cohort_id
where cohorts.start_date != students.start_date
ORDER BY cohort_start_date;