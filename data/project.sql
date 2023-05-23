use `project-4`;


SELECT salary_in_usd, job_title, work_year
FROM da_df
WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
ORDER BY  salary_in_usd DESC;

SELECT AVG(salary_in_usd) AS average_salary, job_title, work_year
FROM da_df
WHERE job_title IN ('Data Engineer', 'Data Scientist', 'Data Analyst')
GROUP BY job_title, work_year
ORDER BY average_salary DESC;

SELECT COUNT(job_title) as total_jobs, work_year, experience_level
FROM da_df
WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
GROUP BY work_year, experience_level 
ORDER BY total_jobs;

SELECT COUNT(job_title) AS total_jobs, work_year, remote_ratio, job_title
FROM da_df
WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
GROUP BY work_year, remote_ratio, job_title
ORDER BY remote_ratio ASC;

SELECT AVG(salary_in_usd) AS average_salary, company_location
FROM da_df
WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
AND company_location in ('US', 'AU', 'GB', 'ES', 'BR')
GROUP BY company_location
ORDER BY average_salary DESC;

SELECT COUNT(job_title) as total_jobs, experience_level, company_size
FROM da_df
WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
GROUP BY experience_level, company_size
ORDER BY total_jobs DESC;

	SELECT MIN(salary_in_usd) AS min_salary, company_location
	FROM da_df
	WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
	AND company_location in ('US', 'AU', 'GB', 'ES', 'BR')
	AND employment_type in ('FT')
	GROUP BY company_location
	ORDER BY min_salary DESC;
    
	SELECT MAX(salary_in_usd) AS min_salary, company_location
	FROM da_df
	WHERE job_title in ('Data Engineer', 'Data Scientist', 'Data Analyst')
	AND company_location in ('US', 'AU', 'GB', 'ES', 'BR')
	AND employment_type in ('FT')
	GROUP BY company_location
	ORDER BY min_salary DESC;







