delete from new_supermarket.khachhang where khachhang.MaKH !=0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/khach2.csv'
INTO TABLE new_supermarket.khachhang
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 