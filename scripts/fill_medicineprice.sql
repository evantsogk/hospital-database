insert into medicineprice (medicine_id, price, datefrom, dateto) 
	select distinct medicine_id, medicine_price, medicine_price_datefrom, medicine_price_dateto
    from all_data
    where medicine_id is not null
    
	