insert into medicine (id, medicine_name, company_name) 
	select distinct medicine_id, medicine_name, medicine_company_name 
    from all_data
    where medicine_id is not null

