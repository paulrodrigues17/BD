update CUSTOMER
set Active=FALSE
where Country='China'
and CustomerId not in(select CustomerId from STREAM);
