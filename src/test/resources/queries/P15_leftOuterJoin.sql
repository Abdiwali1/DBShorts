select * from customer c left outer join address a
                on c.address_id=a.address_id;

select c.first_name,c.last_name,a.address,a.phone
from customer c left outer join address a
                                         on c.address_id=a.address_id;


select c.first_name,c.last_name,a.address,a.phone
from customer c left  join address a
                                on c.address_id=a.address_id;

--LEFT OUTER JOIN / LEFT JOIN will give same result there is no difference