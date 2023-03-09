select * from customer c  right outer join address a
                on c.address_id=a.address_id;



select c.first_name,c.last_name,a.address,a.phone
from customer c  right outer join address a
                                           on c.address_id=a.address_id;

select c.first_name,c.last_name,a.address,a.phone
from customer c  right  join address a
                                  on c.address_id=a.address_id;


select c.first_name,c.last_name,a.address,a.phone
from address a left join customer c
    on a.address_id=c.address_id;

