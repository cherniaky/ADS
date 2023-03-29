-- A
-- SELECT CONCAT(CONCAT(e.first_name, ' '), e.last_name) as full_name, CONCAT(e.email, '@tuke.sk') as email, j.JOB_TITLE, e.HIRE_DATE from hr.employees e INNER JOIN hr.jobs j on e.job_id = j.job_id ORDER BY 1;
-- B
-- SELECT * from hr.employees e INNER JOIN hr.jobs j on e.job_id = j.job_id where e.job_id = 'IT_PROG' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM e.hire_date) > 14 ORDER BY 1;
-- C
-- a
-- SELECT * from hr.employees e NATURAL JOIN hr.jobs j where j.min_salary > 2000 AND j.MIN_SALARY < 7000 ORDER BY 1;
-- b
-- SELECT * from hr.employees e NATURAL JOIN hr.jobs j where job_id = 'IT_PROG' AND EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM hire_date) > 14 ORDER BY first_name, hire_date;
-- SELECT * from hr.employees e INNER JOIN hr.jobs j on e.job_id = j.job_id ORDER BY 1;
-- SELECT EXTRACT(YEAR FROM CURRENT_DATE) from dual;