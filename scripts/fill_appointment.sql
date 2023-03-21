insert into appointment (id, patient_id, room_id, appoint_date ) 
	select distinct appointment, id, roomid, appointment_date
    from all_data

     