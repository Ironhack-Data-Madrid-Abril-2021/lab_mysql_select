SELECT au_id, au_fname as NAME, au_lname as SURNAME, sum(qty) as SALES FROM publications.authors 
left join publications.titleauthor using(au_id) 
left join publications.titles using(title_id) 
left join publications.sales using (title_id) group by au_id  order by SALES desc LIMIT 3