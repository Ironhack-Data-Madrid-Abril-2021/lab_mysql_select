SELECT au_id as AUTHOR, au_fname as FIRSTNAME, au_lname as LASTNAME, title as TITLE , pub_name as PUBLISHER
FROM publications.authors left join publications.titleauthor using(au_id) 
left join publications.titles using(title_id) 
left join publications.publishers using (pub_id);