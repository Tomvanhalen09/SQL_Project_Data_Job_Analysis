SELECT 'Data Analyst Job Postings in The Netherlands' as average_description,
AVG(salary_year_avg) as average_income
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst' AND
job_location LIKE '%Nether%' AND
salary_year_avg IS NOT NULL

UNION

SELECT 'Remote (global) Job Postings' as average_decription,
AVG(salary_year_avg) as average_income
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst' AND
job_location = 'Anywhere' AND
salary_year_avg IS NOT NULL
