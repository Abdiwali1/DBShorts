select * from customer;

select * from address;

select * from customer inner join address
              on customer.address_id=address.address_id;

select customer.first_name,customer.last_name,address.address,address.phone
from customer inner join address
        on customer.address_id=address.address_id;

select c.first_name,c.last_name,a.address,a.phone
from customer c inner join address a
                         on c.address_id=a.address_id;
