delete from new_supermarket.sanpham where sanpham.MaQuay !=0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mathang.csv'
INTO TABLE new_supermarket.sanpham
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows ;
