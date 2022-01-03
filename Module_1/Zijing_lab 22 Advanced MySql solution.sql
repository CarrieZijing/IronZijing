-- Challenge 1 - Most Profiting Authors
SELECT * FROM publications.titles;
SELECT * FROM publications.titleauthor;
SELECT * FROM publications.sales;

-- Calculate the royalty版税 of each sale for each author and the advance预付款 for each author and publication.
SELECT t.title_id AS title, ta.au_id AS author, (t.advance * ta.royaltyper / 100) AS tot_advance, (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
FROM publications.titles t
JOIN publications.titleauthor ta
ON t.title_id = ta.title_id
JOIN publications.sales s
ON s.title_id = t.title_id;

-- Using the output from Step 1 as a subquery, aggregate the total royalties for each title and author.
-- Aggregated royalties of each title for each author
SELECT title, author, tot_advance, sum(sales_royalty) AS tot_royalties
FROM (
SELECT t.title_id AS title, ta.au_id AS author, (t.advance * ta.royaltyper / 100) AS tot_advance, (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
FROM publications.titles t
JOIN publications.titleauthor ta
ON t.title_id = ta.title_id
JOIN publications.sales s
ON s.title_id = t.title_id) AS summary
GROUP BY title, author;

--  Using the output from Step 2 as a subquery, calculate the total profits of each author by aggregating the advances and total royalties of each title.
SELECT author, (tot_advance + tot_royalties) AS profits
FROM(SELECT title, author, tot_advance, sum(sales_royalty) AS tot_royalties
FROM (
SELECT t.title_id AS title, ta.au_id AS author, (t.advance * ta.royaltyper / 100) AS tot_advance, (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
FROM publications.titles t
JOIN publications.titleauthor ta
ON t.title_id = ta.title_id
JOIN publications.sales s
ON s.title_id = t.title_id) AS summary
GROUP BY title, author) as final
ORDER BY profits DESC
LIMIT 3;

-- Challenge 2 - Alternative Solution
CREATE TEMPORARY TABLE publications.final 
SELECT title, author, tot_advance, sum(sales_royalty) AS tot_royalties
FROM (
SELECT t.title_id AS title, ta.au_id AS author, (t.advance * ta.royaltyper / 100) AS tot_advance, (t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
FROM publications.titles t
JOIN publications.titleauthor ta
ON t.title_id = ta.title_id
JOIN publications.sales s
ON s.title_id = t.title_id) AS summary
GROUP BY title, author;

SELECT author, (tot_advance + tot_royalties) AS profits
FROM publications.final
ORDER BY profits DESC
LIMIT 3;

-- Challenge 3
-- create a permanent table named most_profiting_authors to hold the data about 
-- the most profiting authors. 

CREATE TEMPORARY TABLE prep
SELECT author, (tot_advance + tot_royalties) AS profits
FROM publications.final
ORDER BY profits DESC;

CREATE TABLE publications.most_profiting_authors(au_id VARCHAR(20), profits FLOAT)
SELECT * FROM publications.prep;

ALTER TABLE publications.most_profiting_authors
DROP COLUMN au_id;

SELECT * FROM publications.most_profiting_authors;