
const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `SELECT distinct teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1;
`;
const cohortName = process.argv[2] || 'JUL02';
// Store all potentially malicious values in an array.
const values = [cohortName];

pool.query(queryString, values)
  .then(res => {
    console.log(res.rows);
  })
  .catch(err => console.error('query error', err.stack));

