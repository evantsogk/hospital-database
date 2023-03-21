SELECT * FROM employee
	ORDER BY salary desc
    LIMIT 10
    
SELECT employee.*, COUNT(appointment_id) AS patients_seen FROM employee, appointmentrelations
	WHERE employee.id=appointmentrelations.employee_id
	GROUP BY employee.id
    ORDER BY COUNT(appointment_id) DESC
	LIMIT 1
    
    
SELECT * FROM equipment
	WHERE check_date<LAST_DAY(CURDATE())
    

SELECT medicine.*, COUNT(appointmentrelations.medicine_id) AS times_used FROM medicine, appointmentrelations
	WHERE medicine.id=appointmentrelations.medicine_id 
		AND medicine.id NOT LIKE '0'
	GROUP BY medicine.id
    ORDER BY COUNT(appointmentrelations.medicine_id) DESC
    LIMIT 1
    
    
SELECT equipment.*, COUNT(appointmentrelations.equipment_id) AS times_used FROM equipment, appointmentrelations
	WHERE equipment.id=appointmentrelations.equipment_id 
		AND equipment.id NOT LIKE '0'
	GROUP BY equipment.id
    ORDER BY COUNT(appointmentrelations.equipment_id)*YEAR(release_date) DESC
	LIMIT 1    
    
    
SELECT patient.*, SUM(medicineprice.price)+SUM(equipment.usage_cost) AS total_price 
	FROM patient, medicineprice, equipment, appointment, appointmentrelations
    WHERE appointmentrelations.appointment_id=appointment.id
		AND appointment.patient_id=patient.id
        AND appointmentrelations.equipment_id=equipment.id
        AND appointmentrelations.medicine_id=medicineprice.medicine_id
        AND medicineprice.datefrom<appointment.appoint_date 
        AND medicineprice.dateto>appointment.appoint_date
    GROUP BY appointment.id
    ORDER BY (total_price) DESC
    LIMIT 20
    
    
SELECT patient.*, SUM(medicineprice.price)+SUM(equipment.usage_cost) AS total_price 
	FROM patient, medicineprice, equipment, appointment, appointmentrelations
    WHERE appointmentrelations.appointment_id=appointment.id
		AND appointment.patient_id=patient.id
        AND appointmentrelations.equipment_id=equipment.id
        AND appointmentrelations.medicine_id=medicineprice.medicine_id
        AND medicineprice.datefrom<appointment.appoint_date 
        AND medicineprice.dateto>appointment.appoint_date
    GROUP BY appointment.patient_id
    ORDER BY (total_price) DESC
    LIMIT 20

 
    