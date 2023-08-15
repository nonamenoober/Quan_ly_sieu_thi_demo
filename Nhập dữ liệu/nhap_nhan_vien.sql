LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/nhanvien.csv'
INTO TABLE new_supermarket.nhanvien
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 