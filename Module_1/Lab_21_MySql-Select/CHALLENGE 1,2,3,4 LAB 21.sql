use ppub;
-- Challenge 1
SELECT a.au_id, a.au_lname, a.au_fname,t.title,p.pub_name
FROM authors a
LEFT JOIN titleauthor ta
ON a.au_id=ta.au_id
INNER JOIN titles t
ON ta.title_id=t.title_id
LEFT JOIN publishers p
ON t.pub_id=p.pub_id;

-- Challenge 2
SELECT a.au_id,a.au_lname, a.au_fname, p.pub_name,count(t.title) as Number_of_books
FROM authors a
LEFT JOIN titleauthor ta
ON a.au_id=ta.au_id
INNER JOIN titles t
ON ta.title_id=t.title_id
LEFT JOIN publishers p
ON t.pub_id=p.pub_id
GROUP BY a.au_id, p.pub_name;

-- Challenge 3
SELECT a.au_id, a.au_lname, a.au_fname, count(t.title_id) AS TOTAL_Titles, COALESCE(sum(s.qty)) AS Total_sales
FROM authors a
LEFT JOIN titleauthor ta
ON a.au_id=ta.au_id
LEFT JOIN titles t
ON ta.title_id=t.title_id
LEFT JOIN sales s
ON t.title_id=s.title_id
GROUP BY a.au_id 
ORDER BY Total_sales DESC LIMIT 3;

-- Challenge 4
SELECT a.au_id, a.au_lname, a.au_fname, count(t.title_id) AS TOTAL_Titles, COALESCE(sum(s.qty)) AS Total_sales
FROM authors a
LEFT JOIN titleauthor ta
ON a.au_id=ta.au_id
LEFT JOIN titles t
ON ta.title_id=t.title_id
LEFT JOIN sales s
ON t.title_id=s.title_id
GROUP BY a.au_id 
ORDER BY Total_sales DESC;

