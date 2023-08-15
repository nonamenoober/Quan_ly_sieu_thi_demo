delete from new_supermarket.quay_bo_phan where quay_bo_phan.MaQuay !=0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/quay_hang.csv'
INTO TABLE new_supermarket.quay_bo_phan
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 