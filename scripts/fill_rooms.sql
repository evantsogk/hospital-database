insert into rooms (id, roomno, nobeds) 
	select distinct roomid, roomno, nobeds 
    from all_data

	