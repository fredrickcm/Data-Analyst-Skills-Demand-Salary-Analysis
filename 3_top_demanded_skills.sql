SELECT
    skills,
    COUNT(skills_job_dim.skill_id) AS demand_jobs
FROM
    job_postings_fact AS jbs
INNER JOIN skills_job_dim ON jbs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY
    demand_jobs DESC
LIMIT 20;
