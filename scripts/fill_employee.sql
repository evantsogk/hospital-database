insert into employee (id, employee_name, employee_surname, gender, salary, employee_type, doctor_type, experience) 
	select distinct doctor_id, doctor_name, doctor_surname, doctor_gender, doctor_salary, 'Doctor',  doctor_type,  doctor_experience
    from all_data

