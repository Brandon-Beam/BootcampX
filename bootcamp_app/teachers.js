
const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`
SELECT distinct teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2]}';
`)
  .then(res => {
    console.log(res.rows);
  })
  .catch(err => console.error('query error', err.stack));