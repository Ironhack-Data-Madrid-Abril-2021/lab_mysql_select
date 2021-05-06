SELECT au_id as Author , au_fname as lastname , au_lname as firstname , COALESCE(qty,0) as Total
FROM publications.authors
LEFT JOIN publications.titleauthor using (au_id)
LEFT JOIN publications.sales using (title_id)
Order by qty DESC;