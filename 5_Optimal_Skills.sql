/*Get the skill count and average salary for Each Skill
-Get the top 20 skills in demand
-Refine it for a Data Analyst*/

SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_dim.skills) AS demand_count,
    ROUND(AVG(salary_year_avg), 0) AS Average_Annual_Salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills_dim.skill_id
ORDER BY
    demand_count DESC
LIMIT 20;