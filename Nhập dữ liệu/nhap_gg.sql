delete from new_supermarket.giamgia where giamgia.MaGG !=0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ma_giam_gia.csv'
INTO TABLE new_supermarket.giamgia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 