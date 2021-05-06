select au_id, au_fname as FIRST_NAME, au_lname as LAST_NAME, title, pub_name
from authors 
left join titleauthor using (au_id)
left join titles using(title_id)
left join publishers using (pub_id);