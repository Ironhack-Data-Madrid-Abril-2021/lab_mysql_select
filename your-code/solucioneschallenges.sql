lab_mysql_select

Challenge #1

use publications;
select authors.au_id as "author ID", authors.au_lname as "last name", authors.au_fname as "first name", titles.title as title, publishers.pub_id as publishers
from authors
inner join titleauthor on titleauthor.au_id = titleauthor.au_id
inner join titles on titles.title_id=titleauthor.title_id
inner join publishers on publishers.pub_id = titles.pub_id

Challenge #2

select au_id, au_fname as FIRST_NAME, au_lname as LAST_NAME, count(title) as TITLE_COUNT, pub_name
from authors
left join titleauthor using (au_id)
left join titles using(title_id)
left join publishers using (pub_id)
group by au_fname;

Challenge #3

SELECT au_id, au_lname, au_fname, qty as SALES
FROM authors
left join titleauthor using (au_id)
left join sales using(title_id)
order by SALES desc
LIMIT 3;

Challenge #4:

SELECT au_id, au_lname, au_fname, COALESCE(qty, 0) as SALES
FROM authors
left join titleauthor using (au_id)
left join sales using(title_id)
order by SALES desc;
