delete from new_supermarket.hoadon where hoadon.MaHD !=0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/hoadon.csv'
INTO TABLE new_supermarket.hoadon
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 