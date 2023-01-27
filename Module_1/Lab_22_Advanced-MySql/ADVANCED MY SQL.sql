USE ppub;

-- Challenge 1 - Most Profiting Authors
	-- Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication
SELECT
	ta.au_id,
	t.title_id,
    SUM(t.advance * ta.royaltyper / 100) AS advance,
    SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
FROM titleauthor ta
	LEFT JOIN titles t
	ON ta.title_id=t.title_id
		LEFT JOIN sales s
		ON t.title_id=s.title_id
    GROUP BY ta.au_id,t.title_id;
        
	-- Step 2: Aggregate the total royalties for each title and author
WITH step_1 AS(
	SELECT
	ta.au_id,
	t.title_id,
    SUM(t.advance * ta.royaltyper / 100) AS advance,
    SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
FROM titleauthor ta
	LEFT JOIN titles t
	ON ta.title_id=t.title_id
		LEFT JOIN sales s
		ON t.title_id=s.title_id
		GROUP BY ta.au_id,t.title_id)
SELECT
	s1.au_id,
    s1.title_id,
    SUM(advance) AS title_advance,
    SUM(sales_royalty) AS title_royalty
FROM step_1 s1
GROUP BY s1.au_id,s1.title_id;
	-- Step 3: Calculate the total profits of each author
WITH step_2 AS(WITH step_1 AS(
							SELECT
									ta.au_id,
									t.title_id,
									SUM(t.advance * ta.royaltyper / 100) AS advance,
									SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
							FROM titleauthor ta
							LEFT JOIN titles t
							ON ta.title_id=t.title_id
							LEFT JOIN sales s
							ON t.title_id=s.title_id
							GROUP BY ta.au_id,t.title_id)
				SELECT
						s1.au_id,
						s1.title_id,
						SUM(s1.advance) AS title_advance,
						SUM(s1.sales_royalty) AS title_royalty
				FROM step_1 s1
				GROUP BY s1.au_id,s1.title_id)
SELECT
		s2.au_id,
        SUM(s2.title_advance + s2.title_royalty) AS total_profit
FROM step_2 s2
GROUP BY s2.au_id
ORDER BY total_profit DESC
LIMIT 3;
	-- Challenge 2 - Alternative Solution
		-- Step 1
CREATE TEMPORARY TABLE temp_step_1
AS(
	SELECT
		ta.au_id,
		t.title_id,
		SUM(t.advance * ta.royaltyper / 100) AS advance,
		SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) AS sales_royalty
	FROM titleauthor ta
	LEFT JOIN titles t
	ON ta.title_id=t.title_id
		LEFT JOIN sales s
		ON t.title_id=s.title_id
		GROUP BY ta.au_id,t.title_id);
		-- Step 2
CREATE TEMPORARY TABLE temp_step__2
AS(
SELECT
	s1.au_id,
    s1.title_id,
    SUM(s1.advance) AS title_advance,
    SUM(s1.sales_royalty) AS title_royalty
FROM temp_step_1 s1
GROUP BY s1.au_id,s1.title_id);
		-- Step 3
SELECT
		s2.au_id,
        SUM(s2.title_advance + s2.title_royalty) AS total_profit
FROM temp_step__2 s2
GROUP BY s2.au_id
ORDER BY total_profit DESC
LIMIT 3;
	-- Challenge 3
CREATE TABLE IF NOT EXISTS most_profiting_authors
AS (
SELECT
		s2.au_id,
        SUM(s2.title_advance + s2.title_royalty) AS total_profit
FROM temp_step__2 s2
GROUP BY s2.au_id
ORDER BY total_profit DESC
LIMIT 3);
SELECT * FROM most_profiting_authors;

