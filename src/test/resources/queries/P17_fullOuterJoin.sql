select * from customer c full outer join address a
    on c.address_id=a.address_id;


select c.first_name,c.last_name,a.address,a.phone
from customer c full outer join address a
                                         on c.address_id=a.address_id;

select c.first_name,c.last_name,a.address,a.phone
from customer c full  join address a
                                on c.address_id=a.address_id;