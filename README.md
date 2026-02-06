# 📊 Data Analyst Skills & Salary Analysis

## Project Overview
This project analyzes **Data Analyst job postings** to uncover the most in-demand skills, their prevalence in job listings, and associated salary trends.  

The goal is to provide actionable insights for:  
- **Job seekers:** Identify skills that boost career opportunities and earning potential.  
- **Hiring managers:** Benchmark key skills and salaries to shape job descriptions.  
- **Educators / trainers:** Align curricula with market demand to prepare job-ready graduates.  

The analysis combines multiple datasets and SQL queries to link **job postings**, **skills**, and **salaries**.

---

## Data Sources
The datasets were derived from a structured job posting database and include:  

| Dataset / Table           | Description |
|---------------------------|------------|
| `job_postings_fact`       | Job postings with title, location, salary, etc. |
| `skills_job_dim`          | Mapping of job postings to skill IDs |
| `skills_dim`              | Lookup of skill IDs to skill names |
| Skill-demand counts       | Total job postings requiring each skill |
| Skill-average salaries    | Average annual salary per skill |
| Combined demand & salary  | Aggregated dataset linking skills to both demand and salary |

---

## Key Questions Answered
1. **Which skills are most in demand for Data Analysts?**  
2. **How do these skills correlate with average annual salaries?**  
3. **Which skills provide a balance of high demand and high salary?**  
4. **Are there emerging or niche skills that offer higher salary potential?**  

---

## Sample Insights

| Skill      | Job Postings Demand | Average Annual Salary (USD) |
|------------|-------------------|----------------------------|
| SQL        | 30,000+           | 96,000                     |
| Excel      | 20,000+           | 86,000                     |
| Python     | 18,000+           | 101,000                    |
| Tableau    | 16,000+           | 97,000                     |
| R          | 10,000+           | 98,000                     |
| Power BI   | 10,000+           | 92,000                     |
| Azure      | 10,000+           | 105,000                    |
| Go         | 7,000+            | 97,000                     |
| Snowflake  | 6,000+            | 111,000                    |
| SAS        | 5,000+            | 93,000                     |

> Note: Numbers are aggregated from multiple datasets; the full analysis includes the top 20–25 skills.

---

## Key Insights
- **Foundational skills dominate demand:** SQL, Excel, and Python appear in nearly all Data Analyst roles.  
- **Visualization matters:** Tableau and Power BI are essential for communicating insights.  
- **Cloud & advanced tools boost salary:** Skills like Azure, AWS, Snowflake, and Go correlate with higher average salaries.  
- **Niche skills provide opportunities:** Tools like Datarobot, MXNet, and SVN offer high salaries but lower demand.  
- **Soft skills & productivity tools remain relevant:** Word and PowerPoint appear in job postings but have limited salary impact.

---

## Applications
1. **Job Seekers**
   - Focus on high-demand skills for broader job opportunities.  
   - Add cloud or specialized tools to increase earning potential.  

2. **Hiring Managers**
   - Benchmark top skills and salaries for competitive job postings.  

3. **Educators / Bootcamps**
   - Design curricula to teach market-relevant skills that lead to employability.

---

## Future Work
- Expand analysis to other related job titles like **Data Scientist** or **Business Analyst**.  
- Include **location-based salary trends** to provide geographic insights.  
- Build **interactive visualizations** with Python, Tableau, or Power BI for easier exploration.  
- Explore **skill combinations** that maximize both demand and salary.

---

## Technologies Used
- **SQL** (MySQL / PostgreSQL) for data aggregation and analysis  
- **Relational database concepts** (joins, grouping, filtering)  
- **Data visualization** (Python, Tableau, Power BI) for future work  

---

## Project Outcome
This project provides a clear picture of the **Data Analyst job market**, highlighting skills that are in demand, skills that increase salary potential, and opportunities for career growth or curriculum development.
