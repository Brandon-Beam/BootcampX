SELECT SUM(assignment_submissions.duration) as total_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
where name = 'Ibrahim Schimmel'