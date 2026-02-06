/* Answers the Question
-What are the top paying jobs for a Data Analyst
-Identify top 10 highest paying remote data anlyst jobs
-focus on job postings with specified salaries(not null)
-insight on associated companies
*/

SELECT
    jbs.job_id,
    jbs.job_title_short,
    jbs.job_location,
    jbs.job_schedule_type,
    jbs.salary_year_avg,
    jbs.job_posted_date,
    company_dim.name AS company_name
FROM
    job_postings_fact AS jbs
LEFT JOIN company_dim ON jbs.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 20;



