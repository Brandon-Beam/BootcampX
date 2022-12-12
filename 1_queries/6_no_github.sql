SELECT name, email, phone
FROM students
WHERE NOT end_date IS null AND github IS NULL
