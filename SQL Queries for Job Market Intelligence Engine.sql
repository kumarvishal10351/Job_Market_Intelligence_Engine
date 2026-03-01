--- Top skills in demand

SELECT skills_desc, COUNT(*) AS demand
FROM job_postings
GROUP BY skills_desc
ORDER BY demand DESC
LIMIT 10;
--- Average salary by job level--

SELECT job_level, AVG(normalized_salary) AS avg_salary
FROM job_postings_cleaned
GROUP BY job_level;
--- Jobs by work type--

SELECT work_type, COUNT(*) AS count_jobs
FROM job_postings_cleaned
GROUP BY work_type;
--- Top Skills in Demand
SELECT skills_desc, COUNT(*) AS demand
FROM job_postings_cleaned
WHERE skills_desc IS NOT NULL AND skills_desc <> 'Unknown'
GROUP BY skills_desc
ORDER BY demand DESC
LIMIT 10;
--- Average Salary by Job Title
SELECT title, ROUND(AVG(normalized_salary), 2) AS avg_salary
FROM job_postings_cleaned
WHERE normalized_salary IS NOT NULL
GROUP BY title
ORDER BY avg_salary DESC
LIMIT 10;
---Salary Trends by Experience Level
SELECT job_level, ROUND(AVG(normalized_salary), 2) AS avg_salary
FROM job_postings_cleaned
WHERE normalized_salary IS NOT NULL
GROUP BY job_level
ORDER BY avg_salary DESC;
-- Jobs by Work Type
SELECT work_type, COUNT(*) AS job_count
FROM job_postings_cleaned
GROUP BY work_type
ORDER BY job_count DESC;
---Companies Hiring Most
SELECT company_name, COUNT(*) AS postings
FROM job_postings_cleaned
WHERE company_name IS NOT NULL AND company_name <> 'Unknown'
GROUP BY company_name
ORDER BY postings DESC
LIMIT 10;