insert into patient (id, amka, surname, name, phone, email) 
	select distinct id, amka, surname, name, phone, email 
    from all_data
