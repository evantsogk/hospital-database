insert into equipment (id, model, serialno, description, manufacturer_name, release_date, check_date, usage_cost) 
	select distinct equipment_id, equipment_model, equipment_serialno, equipment_description, equipment_manufacturer_name, equipment_release_date, equipment_check_date, equipment_usage_cost
    from all_data
    where equipment_id is not null

