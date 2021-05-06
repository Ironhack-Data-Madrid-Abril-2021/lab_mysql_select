Challenge 1

use publication;
select authors.au_id as 'Author ID', 
authors.au_lname as 'Last name',
authors.au_fname as 'First tname',
titles.title as 'Title',
publishers.pub_id as publishers

from authors
inner join titleauthor on titleauthor.au_id = authors.au_id
inner join titles on titles.title_id = titleauthor.title_id
inner join publishers on publishers.pub_id = titles.pub_id

Challenge 2
use publication;
select au_id, au_fname as FIRST_NAME, au_lname as LAST_NAME, count(title) as TITLE_COUNT, pub_name
from authors
left join titleauthor using (au_id)
left join titles using(title_id)
left join publishers using (pub_id)
group by au_fname;

Challenge 3

use publication;
SELECT au_id, au_lname, au_fname, qty as SALES
FROM authors
left join titleauthor using (au_id)
left join sales using(title_id)
order by SALES desc
LIMIT 3;

Challenge 4

use publication;
SELECT au_id, au_lname, au_fname, COALESCE(qty, 0) as SALES
FROM authors
left join titleauthor using (au_id)
left join sales using(title_id)
order by SALES desc;

