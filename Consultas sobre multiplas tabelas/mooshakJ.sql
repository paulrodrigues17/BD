update STREAM
set Charge = Charge + 1.5                                                                            
where MovieId in(select MovieId from MOVIE where Duration>=180)
and CustomerId in(select CustomerId from CUSTOMER where Country in(select Name from COUNTRY where RegionId in(select RegionId from REGION where Name='Europe')));