SELECT au_id as Author , au_fname as lastname , au_lname as firstname , pub_name as publishername ,count(title) as titlecount
FROM publications.titleauthor
LEFT JOIN publications.authors using (au_id)
LEFT JOIN publications.titles using (title_id)
LEFT JOIN publications.publishers using (pub_id)
GROUP BY au_fname;