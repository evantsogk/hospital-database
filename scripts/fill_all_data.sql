LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/hospital_sample.csv"
INTO TABLE all_data
COLUMNS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
