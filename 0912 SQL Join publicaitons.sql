create database publications;
USE publications;

SELECT pbler.pub_name, COUNT(ttl.title_id) AS Titles
FROM publications.publishers pbler
LEFT JOIN publications.titles ttl
ON pbler.pub_id = ttl.pub_id
GROUP BY pbler.pub_name;

SELECT pbler.pub_name, COUNT(ttl.title_id) AS Titles
FROM publications.publishers pbler
INNER JOIN publications.titles ttl
ON pbler.pub_id = ttl.pub_id
GROUP BY pbler.pub_name;


-- Union：对两个结果集进行并集操作，不包括重复行，同时进行默认规则的排序； = FULL OUTER JOIN (no more this syntax
SELECT *
FROM publications.employee emp
LEFT JOIN publications.jobs job
ON emp.job_id = job.job_id
UNION
SELECT *
FROM publications.employee emp
RIGHT JOIN publications.jobs job
ON emp.job_id = job.job_id;
