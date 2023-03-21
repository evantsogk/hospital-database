insert into appointmentrelations (appointment_id, medicine_id, datefrom, equipment_id, employee_id, main_doctor) 
select
	appointment,
	case when medicine_id is null then '0'
        else medicine_id end,
	case when medicine_id is null then 
			(select datefrom from medicineprice where medicine_id like '0')
		else medicine_price_datefrom end,
    case when equipment_id is null then '0'
        else equipment_id end,
    doctor_id, main_doctor    
from all_data  

