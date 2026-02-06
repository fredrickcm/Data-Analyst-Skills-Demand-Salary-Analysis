/* Answers the Question
-What are required for the top paying jobs for a Data Analyst
-Identify top 10 highest paying remote data anlyst jobs
-focus on job postings with specified salaries(not null)
-insight on most optimal roles and skills as a data analyst
*/
WITH top_paying_jobs AS (
    SELECT
        jbs.job_id,
        jbs.job_title_short,
        jbs.salary_year_avg,
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
    LIMIT 10
)

--verify CTE is working
SELECT
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC;