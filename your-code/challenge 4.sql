SELECT au_id, au_lname, au_fname, COALESCE(qty, 0) as SALES
FROM authors
left join titleauthor using (au_id)
left join sales using(title_id)
order by SALES desc;