delete from new_supermarket.bang_luong where bang_luong.MaNV <> 0 and bang_luong.Ma_bang_luong <>0 ;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bang_luong.csv'
INTO TABLE new_supermarket.bang_luong
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ignore 1 rows 